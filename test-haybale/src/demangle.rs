// janky no-dependency parsing of demangled cpp names

/// Remove all template arguments from a demangled name
/// This function removes all angle brackets and their contents
pub fn erase_templates(demangled: &str) -> String {
    let mut result = String::new();
    let mut bracket_depth = 0;

    for ch in demangled.chars() {
        match ch {
            '<' => {
                bracket_depth += 1;
            }
            '>' => {
                bracket_depth -= 1;
            }
            _ => {
                if bracket_depth == 0 {
                    result.push(ch);
                }
                // If bracket_depth > 0, we're inside a template, so skip this character
            }
        }
    }

    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_erase_templates() {
        // Test simple template
        let demangled = "std::vector<int>::push_back()";
        let result = erase_templates(demangled);
        assert_eq!(result, "std::vector::push_back()");

        // Test complex nested template
        let demangled = "std::map<int, std::vector<int>>::operator[]()";
        let result = erase_templates(demangled);
        assert_eq!(result, "std::map::operator[]()");

        // Test rlbox case
        let demangled = "rlbox::rlbox_sandbox<rlbox::rlbox_noop_sandbox>::create_sandbox()";
        let result = erase_templates(demangled);
        assert_eq!(result, "rlbox::rlbox_sandbox::create_sandbox()");

        // Test case with no templates
        let demangled = "rlbox::tainted_base_impl::UNSAFE_unverified()";
        let result = erase_templates(demangled);
        assert_eq!(result, "rlbox::tainted_base_impl::UNSAFE_unverified()");

        // Test case with multiple template levels
        let demangled = "std::map<int, std::vector<std::string>>::insert()";
        let result = erase_templates(demangled);
        assert_eq!(result, "std::map::insert()");

        // Test case with template in function name
        let demangled = "std::vector<int>::insert<int>()";
        let result = erase_templates(demangled);
        assert_eq!(result, "std::vector::insert()");

        // Test case with no angle brackets
        let demangled = "simple_function()";
        let result = erase_templates(demangled);
        assert_eq!(result, "simple_function()");
    }
}
