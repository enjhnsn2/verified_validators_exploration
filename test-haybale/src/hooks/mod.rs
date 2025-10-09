mod rlbox_hooks;
mod std_hooks;
mod utils;
use haybale::{Config, backend::DefaultBackend};
use rlbox_hooks::add_rlbox_hooks;
use std_hooks::add_std_hooks;

pub fn add_hooks(config: &mut Config<DefaultBackend>) {
    add_rlbox_hooks(config);
    add_std_hooks(config);
}
