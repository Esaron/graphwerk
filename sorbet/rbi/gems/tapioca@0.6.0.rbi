# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `tapioca` gem.
# Please instead update this file by running `bin/tapioca gem tapioca`.

class ActiveRecordColumnTypeHelper
  def initialize(*args, &blk); end

  sig { params(column_name: String).returns([String, String]) }
  def type_for(column_name); end

  private

  sig { params(constant: Module).returns(T::Boolean) }
  def do_not_generate_strong_types?(constant); end

  sig { params(column_type: Object).returns(String) }
  def handle_unknown_type(column_type); end

  def lookup_arg_type_of_method(*args, &blk); end
  def lookup_return_type_of_method(*args, &blk); end
end

class DynamicMixinCompiler
  include ::Tapioca::Reflection

  sig { params(constant: Module).void }
  def initialize(constant); end

  def class_attribute_predicates; end

  sig { returns(T::Array[Symbol]) }
  def class_attribute_readers; end

  def class_attribute_writers; end

  sig { params(tree: RBI::Tree).void }
  def compile_class_attributes(tree); end

  sig { params(tree: RBI::Tree).returns([T::Array[Module], T::Array[Module]]) }
  def compile_mixes_in_class_methods(tree); end

  sig { returns(T::Array[Module]) }
  def dynamic_extends; end

  def dynamic_includes; end

  sig { returns(T::Boolean) }
  def empty_attributes?; end

  def instance_attribute_predicates; end

  sig { returns(T::Array[Symbol]) }
  def instance_attribute_readers; end

  def instance_attribute_writers; end
end

class Module
  include ::Module::Concerning

  def autoload(const_name, path); end
end

Module::DELEGATION_RESERVED_KEYWORDS = T.let(T.unsafe(nil), Array)
Module::DELEGATION_RESERVED_METHOD_NAMES = T.let(T.unsafe(nil), Set)
Module::RUBY_RESERVED_KEYWORDS = T.let(T.unsafe(nil), Array)
module RBI; end

class RBI::File
  sig { params(strictness: T.nilable(String), comments: T::Array[RBI::Comment], block: T.nilable(T.proc.params(file: RBI::File).void)).void }
  def initialize(strictness: T.unsafe(nil), comments: T.unsafe(nil), &block); end

  sig { params(node: RBI::Node).void }
  def <<(node); end

  sig { params(v: RBI::Printer).void }
  def accept_printer(v); end

  sig { returns(T::Array[RBI::Comment]) }
  def comments; end

  def comments=(_arg0); end

  sig { returns(T::Boolean) }
  def empty?; end

  sig { params(out: T.any(IO, StringIO), indent: Integer, print_locs: T::Boolean).void }
  def print(out: T.unsafe(nil), indent: T.unsafe(nil), print_locs: T.unsafe(nil)); end

  sig { returns(RBI::Tree) }
  def root; end

  def root=(_arg0); end

  sig { void }
  def set_empty_body_content; end

  sig { params(command: String, reason: T.nilable(String), display_heading: T::Boolean).void }
  def set_file_header(command, reason: T.unsafe(nil), display_heading: T.unsafe(nil)); end

  sig { returns(T.nilable(String)) }
  def strictness; end

  def strictness=(_arg0); end

  sig { params(indent: Integer, print_locs: T::Boolean).returns(String) }
  def string(indent: T.unsafe(nil), print_locs: T.unsafe(nil)); end

  sig { void }
  def transform_rbi!; end

  sig { returns(String) }
  def transformed_string; end
end

class RBI::Tree < ::RBI::NodeWithComments
  sig { params(loc: T.nilable(RBI::Loc), comments: T::Array[RBI::Comment], block: T.nilable(T.proc.params(node: RBI::Tree).void)).void }
  def initialize(loc: T.unsafe(nil), comments: T.unsafe(nil), &block); end

  sig { params(node: RBI::Node).void }
  def <<(node); end

  sig { override.params(v: RBI::Printer).void }
  def accept_printer(v); end

  sig { params(with_todo_comment: T::Boolean).void }
  def add_sig_templates!(with_todo_comment: T.unsafe(nil)); end

  sig { params(annotation: String, annotate_scopes: T::Boolean, annotate_properties: T::Boolean).void }
  def annotate!(annotation, annotate_scopes: T.unsafe(nil), annotate_properties: T.unsafe(nil)); end

  sig { params(name: String, superclass_name: T.nilable(String), block: T.nilable(T.proc.params(scope: RBI::Scope).void)).returns(RBI::Scope) }
  def create_class(name, superclass_name: T.unsafe(nil), &block); end

  sig { params(name: String, value: String).void }
  def create_constant(name, value:); end

  sig { params(name: String).void }
  def create_extend(name); end

  sig { params(name: String).void }
  def create_include(name); end

  sig { params(name: String, parameters: T::Array[RBI::TypedParam], return_type: String, class_method: T::Boolean, visibility: RBI::Visibility).void }
  def create_method(name, parameters: T.unsafe(nil), return_type: T.unsafe(nil), class_method: T.unsafe(nil), visibility: T.unsafe(nil)); end

  sig { params(name: String).void }
  def create_mixes_in_class_methods(name); end

  sig { params(name: String, block: T.nilable(T.proc.params(scope: RBI::Scope).void)).returns(RBI::Scope) }
  def create_module(name, &block); end

  sig { params(constant: Module, block: T.nilable(T.proc.params(scope: RBI::Scope).void)).void }
  def create_path(constant, &block); end

  sig { params(name: String, value: String).void }
  def create_type_member(name, value: T.unsafe(nil)); end

  sig { params(annotation: String).void }
  def deannotate!(annotation); end

  sig { returns(T::Boolean) }
  def empty?; end

  sig { void }
  def group_nodes!; end

  sig { returns(RBI::Index) }
  def index; end

  sig { params(other: RBI::Tree, left_name: String, right_name: String, keep: RBI::Rewriters::Merge::Keep).returns(RBI::MergeTree) }
  def merge(other, left_name: T.unsafe(nil), right_name: T.unsafe(nil), keep: T.unsafe(nil)); end

  sig { void }
  def nest_non_public_methods!; end

  sig { void }
  def nest_singleton_methods!; end

  sig { returns(T::Array[RBI::Node]) }
  def nodes; end

  sig { override.returns(T::Boolean) }
  def oneline?; end

  sig { void }
  def sort_nodes!; end

  private

  sig { params(node: RBI::Node).returns(RBI::Node) }
  def create_node(node); end

  sig { returns(T::Hash[String, RBI::Node]) }
  def nodes_cache; end

  sig { params(name: String).returns(T::Boolean) }
  def valid_method_name?(name); end
end

RBI::Tree::SPECIAL_METHOD_NAMES = T.let(T.unsafe(nil), Array)

class RBI::TypedParam < ::T::Struct
  const :param, RBI::Param
  const :type, String

  class << self
    def inherited(s); end
  end
end

RBI::VERSION = T.let(T.unsafe(nil), String)

module T::Generic::TypeStoragePatch
  def [](*types); end
  def type_member(variance = T.unsafe(nil), fixed: T.unsafe(nil), lower: T.unsafe(nil), upper: T.unsafe(nil)); end
  def type_template(variance = T.unsafe(nil), fixed: T.unsafe(nil), lower: T.unsafe(nil), upper: T.unsafe(nil)); end
end

module T::Types::Simple::GenericNamePatch
  def name; end
end

module T::Types::Simple::NamePatch
  def name; end
end

module Tapioca
  class << self
    sig { type_parameters(:Result).params(blk: T.proc.returns(T.type_parameter(:Result))).returns(T.type_parameter(:Result)) }
    def silence_warnings(&blk); end
  end
end

class Tapioca::Cli < ::Thor
  include ::Tapioca::CliHelper
  include ::Tapioca::ConfigHelper

  def __print_version; end
  def clean_shims(*files_to_clean); end
  def dsl(*constants); end
  def gem(*gems); end
  def init; end
  def require; end
  def todo; end

  class << self
    def exit_on_failure?; end
  end
end

Tapioca::Cli::FILE_HEADER_OPTION_DESC = T.let(T.unsafe(nil), String)

module Tapioca::CliHelper
  sig { params(message: String, color: T.any(Symbol, T::Array[Symbol])).void }
  def say_error(message = T.unsafe(nil), *color); end
end

module Tapioca::Compilers; end
module Tapioca::Compilers::Dsl; end

class Tapioca::Compilers::Dsl::Base
  include ::Tapioca::Reflection
  include ::Tapioca::Compilers::Dsl::ParamHelper

  abstract!

  sig { params(compiler: Tapioca::Compilers::DslCompiler).void }
  def initialize(compiler); end

  sig { params(error: String).void }
  def add_error(error); end

  sig { abstract.type_parameters(:T).params(tree: RBI::Tree, constant: T.type_parameter(:T)).void }
  def decorate(tree, constant); end

  sig { returns(T::Array[String]) }
  def errors; end

  sig { abstract.returns(T::Enumerable[Module]) }
  def gather_constants; end

  sig { params(generator_name: String).returns(T::Boolean) }
  def generator_enabled?(generator_name); end

  sig { params(constant: Module).returns(T::Boolean) }
  def handles?(constant); end

  sig { returns(T::Set[Module]) }
  def processable_constants; end

  private

  sig { returns(T::Enumerable[Class]) }
  def all_classes; end

  sig { returns(T::Enumerable[Module]) }
  def all_modules; end

  sig { params(method_def: T.any(Method, UnboundMethod)).returns(T::Array[RBI::TypedParam]) }
  def compile_method_parameters_to_rbi(method_def); end

  sig { params(method_def: T.any(Method, UnboundMethod)).returns(String) }
  def compile_method_return_type_to_rbi(method_def); end

  sig { params(scope: RBI::Scope, method_def: T.any(Method, UnboundMethod), class_method: T::Boolean).void }
  def create_method_from_def(scope, method_def, class_method: T.unsafe(nil)); end

  sig { params(method_def: T.any(Method, UnboundMethod), signature: T.untyped).returns(T::Array[String]) }
  def parameters_types_from_signature(method_def, signature); end

  class << self
    sig { params(name: String).returns(T.nilable(T.class_of(Tapioca::Compilers::Dsl::Base))) }
    def resolve(name); end
  end
end

Tapioca::Compilers::Dsl::DSL_COMPILERS_DIR = T.let(T.unsafe(nil), String)

module Tapioca::Compilers::Dsl::ParamHelper
  sig { params(name: String, type: String).returns(RBI::TypedParam) }
  def create_block_param(name, type:); end

  sig { params(name: String, type: String, default: String).returns(RBI::TypedParam) }
  def create_kw_opt_param(name, type:, default:); end

  sig { params(name: String, type: String).returns(RBI::TypedParam) }
  def create_kw_param(name, type:); end

  sig { params(name: String, type: String).returns(RBI::TypedParam) }
  def create_kw_rest_param(name, type:); end

  sig { params(name: String, type: String, default: String).returns(RBI::TypedParam) }
  def create_opt_param(name, type:, default:); end

  sig { params(name: String, type: String).returns(RBI::TypedParam) }
  def create_param(name, type:); end

  sig { params(name: String, type: String).returns(RBI::TypedParam) }
  def create_rest_param(name, type:); end

  sig { params(param: RBI::Param, type: String).returns(RBI::TypedParam) }
  def create_typed_param(param, type); end
end

class Tapioca::Compilers::DslCompiler
  sig { params(requested_constants: T::Array[Module], requested_generators: T::Array[T.class_of(Tapioca::Compilers::Dsl::Base)], excluded_generators: T::Array[T.class_of(Tapioca::Compilers::Dsl::Base)], error_handler: T.proc.params(error: String).void, number_of_workers: T.nilable(Integer)).void }
  def initialize(requested_constants:, requested_generators: T.unsafe(nil), excluded_generators: T.unsafe(nil), error_handler: T.unsafe(nil), number_of_workers: T.unsafe(nil)); end

  sig { returns(T.proc.params(error: String).void) }
  def error_handler; end

  sig { params(generator_name: String).returns(T::Boolean) }
  def generator_enabled?(generator_name); end

  sig { returns(T::Enumerable[Tapioca::Compilers::Dsl::Base]) }
  def generators; end

  sig { returns(T::Array[Module]) }
  def requested_constants; end

  sig { type_parameters(:T).params(blk: T.proc.params(constant: Module, rbi: RBI::File).returns(T.type_parameter(:T))).returns(T::Array[T.type_parameter(:T)]) }
  def run(&blk); end

  private

  sig { params(requested_constants: T::Array[Module]).returns(T::Set[Module]) }
  def gather_constants(requested_constants); end

  sig { params(requested_generators: T::Array[T.class_of(Tapioca::Compilers::Dsl::Base)], excluded_generators: T::Array[T.class_of(Tapioca::Compilers::Dsl::Base)]).returns(T::Enumerable[Tapioca::Compilers::Dsl::Base]) }
  def gather_generators(requested_generators, excluded_generators); end

  sig { params(constant: Module).returns(T.nilable(RBI::File)) }
  def rbi_for_constant(constant); end

  sig { params(error: String).returns(T.noreturn) }
  def report_error(error); end
end

class Tapioca::Compilers::RequiresCompiler
  sig { params(sorbet_path: String).void }
  def initialize(sorbet_path); end

  sig { returns(String) }
  def compile; end

  private

  sig { params(config: Spoom::Sorbet::Config).returns(T::Array[String]) }
  def collect_files(config); end

  sig { params(file_path: String).returns(T::Enumerable[String]) }
  def collect_requires(file_path); end

  sig { params(config: Spoom::Sorbet::Config, file_path: Pathname).returns(T::Boolean) }
  def file_ignored_by_sorbet?(config, file_path); end

  sig { params(files: T::Enumerable[String], name: String).returns(T::Boolean) }
  def name_in_project?(files, name); end

  sig { params(path: Pathname).returns(T::Array[String]) }
  def path_parts(path); end
end

module Tapioca::Compilers::Sorbet
  class << self
    sig { params(args: String).returns(String) }
    def run(*args); end

    sig { returns(String) }
    def sorbet_path; end

    sig { params(feature: Symbol, version: T.nilable(Gem::Version)).returns(T::Boolean) }
    def supports?(feature, version: T.unsafe(nil)); end
  end
end

Tapioca::Compilers::Sorbet::EXE_PATH_ENV_VAR = T.let(T.unsafe(nil), String)
Tapioca::Compilers::Sorbet::FEATURE_REQUIREMENTS = T.let(T.unsafe(nil), Hash)
Tapioca::Compilers::Sorbet::SORBET = T.let(T.unsafe(nil), Pathname)
Tapioca::Compilers::Sorbet::SORBET_GEM_SPEC = T.let(T.unsafe(nil), Gem::Specification)
module Tapioca::Compilers::SymbolTable; end

class Tapioca::Compilers::SymbolTable::SymbolGenerator
  include ::Tapioca::Reflection

  sig { params(gem: Tapioca::Gemfile::GemSpec, indent: Integer, include_doc: T::Boolean).void }
  def initialize(gem, indent = T.unsafe(nil), include_doc = T.unsafe(nil)); end

  sig { returns(Tapioca::Gemfile::GemSpec) }
  def gem; end

  sig { params(rbi: RBI::File).void }
  def generate(rbi); end

  sig { returns(Integer) }
  def indent; end

  private

  sig { params(tree: RBI::Tree, mods: T::Array[Module], mixin_type: Tapioca::Trackers::Mixin::Type).void }
  def add_mixins(tree, mods, mixin_type); end

  sig { params(name: String).void }
  def add_to_alias_namespace(name); end

  sig { params(name: T.nilable(String)).void }
  def add_to_symbol_queue(name); end

  sig { params(name: String).returns(T::Boolean) }
  def alias_namespaced?(name); end

  sig { params(tree: RBI::Tree, name: T.nilable(String), constant: BasicObject).void }
  def compile(tree, name, constant); end

  sig { params(tree: RBI::Tree, name: String, constant: Module).void }
  def compile_alias(tree, name, constant); end

  sig { params(tree: RBI::Tree, name: String, constant: Module).void }
  def compile_body(tree, name, constant); end

  sig { params(tree: RBI::Tree, name: String, constant: BasicObject).void }
  def compile_constant(tree, name, constant); end

  sig { params(tree: RBI::Tree, module_name: String, mod: Module, for_visibility: T::Array[Symbol]).void }
  def compile_directly_owned_methods(tree, module_name, mod, for_visibility = T.unsafe(nil)); end

  sig { params(tree: RBI::Tree, constant: Module).void }
  def compile_dynamic_mixins(tree, constant); end

  sig { params(tree: RBI::Tree, constant: Module).void }
  def compile_enums(tree, constant); end

  sig { params(tree: RBI::Tree, symbol_name: String, constant: Module, method: T.nilable(UnboundMethod), visibility: RBI::Visibility).void }
  def compile_method(tree, symbol_name, constant, method, visibility = T.unsafe(nil)); end

  sig { params(tree: RBI::Tree, name: String, constant: Module).void }
  def compile_methods(tree, name, constant); end

  sig { params(tree: RBI::Tree, constant: Module).void }
  def compile_mixins(tree, constant); end

  sig { params(tree: RBI::Tree, name: String, constant: Module).void }
  def compile_module(tree, name, constant); end

  sig { params(tree: RBI::Tree, constant: Module).void }
  def compile_module_helpers(tree, constant); end

  sig { params(tree: RBI::Tree, name: String, value: BasicObject).void }
  def compile_object(tree, name, value); end

  sig { params(tree: RBI::Tree, constant: Module).void }
  def compile_props(tree, constant); end

  sig { params(signature: T.untyped, parameters: T::Array[[Symbol, String]]).returns(RBI::Sig) }
  def compile_signature(signature, parameters); end

  sig { params(tree: RBI::Tree, name: String, constant: Module).void }
  def compile_subconstants(tree, name, constant); end

  sig { params(constant: Class).returns(T.nilable(String)) }
  def compile_superclass(constant); end

  sig { params(tree: RBI::Tree, constant: Module).void }
  def compile_type_variable_declarations(tree, constant); end

  sig { params(tree: RBI::Tree, constant: Module).void }
  def compile_type_variables(tree, constant); end

  sig { params(constant: Module, strict: T::Boolean).returns(T::Boolean) }
  def defined_in_gem?(constant, strict: T.unsafe(nil)); end

  sig { params(name: String).returns(T::Array[RBI::Comment]) }
  def documentation_comments(name); end

  sig { params(symbols: T::Set[String]).returns(T::Set[String]) }
  def engine_symbols(symbols); end

  sig { params(tree: RBI::Tree, symbol: String).void }
  def generate_from_symbol(tree, symbol); end

  sig { params(constant: T.all(Module, T::Generic)).returns(String) }
  def generic_name_of(constant); end

  sig { params(constant: Module).returns(T::Array[String]) }
  def get_file_candidates(constant); end

  sig { params(constant: Module).returns(T.nilable(UnboundMethod)) }
  def initialize_method_for(constant); end

  sig { params(constant: Module).returns(T::Array[Module]) }
  def interesting_ancestors_of(constant); end

  sig { params(name: String).void }
  def mark_seen(name); end

  sig { params(method: UnboundMethod).returns(T::Boolean) }
  def method_in_gem?(method); end

  sig { params(mod: Module).returns(T::Hash[Symbol, T::Array[Symbol]]) }
  def method_names_by_visibility(mod); end

  sig { params(mod: Module, mixin_type: Tapioca::Trackers::Mixin::Type, mixin_locations: T::Hash[Tapioca::Trackers::Mixin::Type, T::Hash[Module, T::Array[String]]]).returns(T::Boolean) }
  def mixed_in_by_gem?(mod, mixin_type, mixin_locations); end

  sig { params(constant: Module).returns(T.nilable(String)) }
  def name_of(constant); end

  sig { params(constant: Module, class_name: T.nilable(String)).returns(T.nilable(String)) }
  def name_of_proxy_target(constant, class_name); end

  sig { params(sig_string: String).returns(String) }
  def sanitize_signature_types(sig_string); end

  sig { params(name: String).returns(T::Boolean) }
  def seen?(name); end

  sig { params(constant: Module, method_name: String).returns(T::Boolean) }
  def struct_method?(constant, method_name); end

  sig { params(symbol_name: String).returns(T::Boolean) }
  def symbol_ignored?(symbol_name); end

  sig { returns(T::Set[String]) }
  def symbols; end

  sig { params(name: String).returns(T::Boolean) }
  def valid_method_name?(name); end
end

Tapioca::Compilers::SymbolTable::SymbolGenerator::IGNORED_COMMENTS = T.let(T.unsafe(nil), Array)
Tapioca::Compilers::SymbolTable::SymbolGenerator::IGNORED_SYMBOLS = T.let(T.unsafe(nil), Array)
Tapioca::Compilers::SymbolTable::SymbolGenerator::SPECIAL_METHOD_NAMES = T.let(T.unsafe(nil), Array)
Tapioca::Compilers::SymbolTable::SymbolGenerator::TYPE_PARAMETER_MATCHER = T.let(T.unsafe(nil), Regexp)

module Tapioca::Compilers::SymbolTable::SymbolLoader
  class << self
    def ignore_symbol?(symbol); end

    sig { params(paths: T::Array[Pathname]).returns(T::Set[String]) }
    def list_from_paths(paths); end

    private

    def ignored_symbols; end

    sig { params(paths: T::Array[String]).returns(T::Set[String]) }
    def load_symbols(paths); end

    def symbol_table_json_from(input, table_type: T.unsafe(nil)); end
  end
end

class Tapioca::Compilers::SymbolTable::SymbolLoader::SymbolTableParser
  class << self
    def parse(object, parents = T.unsafe(nil)); end
  end
end

class Tapioca::Compilers::SymbolTableCompiler
  sig { params(gem: Tapioca::Gemfile::GemSpec, rbi: RBI::File, indent: Integer, include_docs: T::Boolean).void }
  def compile(gem, rbi, indent = T.unsafe(nil), include_docs = T.unsafe(nil)); end
end

class Tapioca::Compilers::TodosCompiler
  sig { returns(String) }
  def compile; end

  private

  sig { returns(String) }
  def list_todos; end
end

module Tapioca::ConfigHelper
  sig { params(args: T.untyped, local_options: T.untyped, config: T.untyped).void }
  def initialize(args = T.unsafe(nil), local_options = T.unsafe(nil), config = T.unsafe(nil)); end

  sig { returns(String) }
  def command_name; end

  sig { returns(Thor::CoreExt::HashWithIndifferentAccess) }
  def defaults; end

  sig { returns(Thor::CoreExt::HashWithIndifferentAccess) }
  def options; end

  private

  sig { params(options: Thor::CoreExt::HashWithIndifferentAccess).returns(Thor::CoreExt::HashWithIndifferentAccess) }
  def config_options(options); end

  sig { params(options: T::Hash[Symbol, Thor::Option]).void }
  def filter_defaults(options); end

  sig { params(options: T.nilable(Thor::CoreExt::HashWithIndifferentAccess)).returns(Thor::CoreExt::HashWithIndifferentAccess) }
  def merge_options(*options); end
end

Tapioca::DEFAULT_COMMAND = T.let(T.unsafe(nil), String)
Tapioca::DEFAULT_DSL_DIR = T.let(T.unsafe(nil), String)
Tapioca::DEFAULT_GEM_DIR = T.let(T.unsafe(nil), String)
Tapioca::DEFAULT_OVERRIDES = T.let(T.unsafe(nil), Hash)
Tapioca::DEFAULT_POSTREQUIRE_FILE = T.let(T.unsafe(nil), String)
Tapioca::DEFAULT_RBI_DIR = T.let(T.unsafe(nil), String)
Tapioca::DEFAULT_SHIM_DIR = T.let(T.unsafe(nil), String)
Tapioca::DEFAULT_TODO_FILE = T.let(T.unsafe(nil), String)
class Tapioca::Error < ::StandardError; end

class Tapioca::Executor
  sig { params(queue: T::Array[T.untyped], number_of_workers: T.nilable(Integer)).void }
  def initialize(queue, number_of_workers: T.unsafe(nil)); end

  sig { type_parameters(:T).params(block: T.proc.params(item: T.untyped).returns(T.type_parameter(:T))).returns(T::Array[T.type_parameter(:T)]) }
  def run_in_parallel(&block); end
end

Tapioca::Executor::MINIMUM_ITEMS_PER_WORKER = T.let(T.unsafe(nil), Integer)

class Tapioca::Gemfile
  sig { void }
  def initialize; end

  sig { returns(Bundler::Definition) }
  def definition; end

  sig { returns(T::Array[Tapioca::Gemfile::GemSpec]) }
  def dependencies; end

  sig { params(gem_name: String).returns(T.nilable(Tapioca::Gemfile::GemSpec)) }
  def gem(gem_name); end

  sig { returns(T::Array[String]) }
  def missing_specs; end

  sig { void }
  def require_bundle; end

  private

  sig { returns(String) }
  def dir; end

  sig { returns(File) }
  def gemfile; end

  sig { returns(T::Array[Symbol]) }
  def groups; end

  sig { returns([T::Array[Tapioca::Gemfile::GemSpec], T::Array[String]]) }
  def load_dependencies; end

  def lockfile; end

  sig { returns([T::Enumerable[T.any(Bundler::StubSpecification, Gem::Specification)], T::Array[String]]) }
  def materialize_deps; end

  sig { returns(Bundler::Runtime) }
  def runtime; end
end

class Tapioca::Gemfile::GemSpec
  sig { params(spec: T.any(Bundler::StubSpecification, Gem::Specification)).void }
  def initialize(spec); end

  sig { params(path: String).returns(T::Boolean) }
  def contains_path?(path); end

  sig { returns(T::Boolean) }
  def export_rbi_files?; end

  sig { returns(T::Array[String]) }
  def exported_rbi_files; end

  sig { returns(RBI::MergeTree) }
  def exported_rbi_tree; end

  sig { returns(T::Array[Pathname]) }
  def files; end

  sig { returns(String) }
  def full_gem_path; end

  sig { params(gemfile_dir: String).returns(T::Boolean) }
  def ignore?(gemfile_dir); end

  sig { returns(String) }
  def name; end

  sig { void }
  def parse_yard_docs; end

  sig { returns(String) }
  def rbi_file_name; end

  def version; end

  private

  sig { returns(T::Boolean) }
  def default_gem?; end

  sig { returns(T::Boolean) }
  def gem_ignored?; end

  sig { params(gemfile_dir: String).returns(T::Boolean) }
  def gem_in_app_dir?(gemfile_dir); end

  sig { returns(T::Boolean) }
  def gem_in_bundle_path?; end

  sig { params(path: String).returns(T::Boolean) }
  def has_parent_gemspec?(path); end

  sig { returns(Pathname) }
  def ruby_lib_dir; end

  sig { params(path: T.any(Pathname, String)).returns(String) }
  def to_realpath(path); end

  sig { returns(String) }
  def version_string; end
end

Tapioca::Gemfile::GemSpec::IGNORED_GEMS = T.let(T.unsafe(nil), Array)
Tapioca::Gemfile::Spec = T.type_alias { T.any(Bundler::StubSpecification, Gem::Specification) }
module Tapioca::Generators; end

class Tapioca::Generators::Base
  include ::Tapioca::CliHelper
  include ::Thor::Base
  include ::Thor::Invocation
  include ::Thor::Shell
  extend ::Thor::Base::ClassMethods
  extend ::Thor::Invocation::ClassMethods

  abstract!

  sig { params(default_command: String, file_writer: Thor::Actions).void }
  def initialize(default_command:, file_writer: T.unsafe(nil)); end

  sig { abstract.void }
  def generate; end

  private

  sig { params(path: T.any(Pathname, String), content: String, force: T::Boolean, skip: T::Boolean, verbose: T::Boolean).void }
  def create_file(path, content, force: T.unsafe(nil), skip: T.unsafe(nil), verbose: T.unsafe(nil)); end

  sig { params(path: T.any(Pathname, String), verbose: T::Boolean).void }
  def remove_file(path, verbose: T.unsafe(nil)); end
end

class Tapioca::Generators::Base::FileWriter < ::Thor
  include ::Thor::Actions
  extend ::Thor::Actions::ClassMethods
end

class Tapioca::Generators::Dsl < ::Tapioca::Generators::Base
  sig { params(requested_constants: T::Array[String], outpath: Pathname, only: T::Array[String], exclude: T::Array[String], file_header: T::Boolean, compiler_path: String, tapioca_path: String, default_command: String, file_writer: Thor::Actions, should_verify: T::Boolean, quiet: T::Boolean, verbose: T::Boolean, number_of_workers: T.nilable(Integer)).void }
  def initialize(requested_constants:, outpath:, only:, exclude:, file_header:, compiler_path:, tapioca_path:, default_command:, file_writer: T.unsafe(nil), should_verify: T.unsafe(nil), quiet: T.unsafe(nil), verbose: T.unsafe(nil), number_of_workers: T.unsafe(nil)); end

  sig { override.void }
  def generate; end

  private

  sig { void }
  def abort_if_pending_migrations!; end

  sig { params(cause: Symbol, files: T::Array[String]).returns(String) }
  def build_error_for_files(cause, files); end

  sig { params(constant_name: String, rbi: RBI::File, outpath: Pathname, quiet: T::Boolean).returns(T.nilable(Pathname)) }
  def compile_dsl_rbi(constant_name, rbi, outpath: T.unsafe(nil), quiet: T.unsafe(nil)); end

  sig { params(constant_names: T::Array[String]).returns(T::Array[Module]) }
  def constantize(constant_names); end

  sig { params(generator_names: T::Array[String]).returns(T::Array[T.class_of(Tapioca::Compilers::Dsl::Base)]) }
  def constantize_generators(generator_names); end

  sig { params(constant_name: String).returns(Pathname) }
  def dsl_rbi_filename(constant_name); end

  sig { params(requested_constants: T::Array[String], path: Pathname).returns(T::Set[Pathname]) }
  def existing_rbi_filenames(requested_constants, path: T.unsafe(nil)); end

  sig { params(constant: String).returns(String) }
  def generate_command_for(constant); end

  sig { params(eager_load: T::Boolean).void }
  def load_application(eager_load:); end

  sig { void }
  def load_dsl_extensions; end

  sig { void }
  def load_dsl_generators; end

  sig { returns(Tapioca::Loader) }
  def loader; end

  sig { params(dir: Pathname).void }
  def perform_dsl_verification(dir); end

  sig { params(files: T::Set[Pathname]).void }
  def purge_stale_dsl_rbi_files(files); end

  sig { params(constant: String).returns(String) }
  def rbi_filename_for(constant); end

  sig { params(path: Pathname).returns(T::Array[Pathname]) }
  def rbi_files_in(path); end

  sig { params(diff: T::Hash[String, Symbol], command: String).void }
  def report_diff_and_exit_if_out_of_date(diff, command); end

  sig { params(class_name: String).returns(String) }
  def underscore(class_name); end

  sig { params(tmp_dir: Pathname).returns(T::Hash[String, Symbol]) }
  def verify_dsl_rbi(tmp_dir:); end
end

class Tapioca::Generators::Gem < ::Tapioca::Generators::Base
  sig { params(gem_names: T::Array[String], exclude: T::Array[String], prerequire: T.nilable(String), postrequire: String, typed_overrides: T::Hash[String, String], default_command: String, outpath: Pathname, file_header: T::Boolean, doc: T::Boolean, include_exported_rbis: T::Boolean, file_writer: Thor::Actions, number_of_workers: T.nilable(Integer)).void }
  def initialize(gem_names:, exclude:, prerequire:, postrequire:, typed_overrides:, default_command:, outpath:, file_header:, doc:, include_exported_rbis:, file_writer: T.unsafe(nil), number_of_workers: T.unsafe(nil)); end

  sig { override.void }
  def generate; end

  sig { params(should_verify: T::Boolean).void }
  def sync(should_verify: T.unsafe(nil)); end

  private

  sig { returns(T::Array[String]) }
  def added_rbis; end

  sig { params(cause: Symbol, files: T::Array[String]).returns(String) }
  def build_error_for_files(cause, files); end

  sig { returns(Tapioca::Gemfile) }
  def bundle; end

  sig { params(gem: Tapioca::Gemfile::GemSpec).void }
  def compile_gem_rbi(gem); end

  sig { params(gem_name: String).returns(Pathname) }
  def existing_rbi(gem_name); end

  sig { returns(T::Hash[String, String]) }
  def existing_rbis; end

  sig { params(gem_name: String).returns(Pathname) }
  def expected_rbi(gem_name); end

  sig { returns(T::Hash[String, String]) }
  def expected_rbis; end

  sig { params(file: String, error: LoadError).void }
  def explain_failed_require(file, error); end

  sig { params(gem_name: String).returns(T::Boolean) }
  def gem_rbi_exists?(gem_name); end

  sig { params(gem_name: String, version: String).returns(Pathname) }
  def gem_rbi_filename(gem_name, version); end

  sig { params(gem_names: T::Array[String]).returns(T::Array[Tapioca::Gemfile::GemSpec]) }
  def gems_to_generate(gem_names); end

  sig { returns(Tapioca::Loader) }
  def loader; end

  sig { params(gem: Tapioca::Gemfile::GemSpec, file: RBI::File).void }
  def merge_with_exported_rbi(gem, file); end

  sig { params(old_filename: Pathname, new_filename: Pathname).void }
  def move(old_filename, new_filename); end

  sig { void }
  def perform_additions; end

  sig { void }
  def perform_removals; end

  sig { void }
  def perform_sync_verification; end

  sig { returns(T::Array[String]) }
  def removed_rbis; end

  sig { params(diff: T::Hash[String, Symbol], command: String).void }
  def report_diff_and_exit_if_out_of_date(diff, command); end

  sig { void }
  def require_gem_file; end
end

class Tapioca::Generators::Init < ::Tapioca::Generators::Base
  sig { params(sorbet_config: String, tapioca_config: String, default_postrequire: String, default_command: String, file_writer: Thor::Actions).void }
  def initialize(sorbet_config:, tapioca_config:, default_postrequire:, default_command:, file_writer: T.unsafe(nil)); end

  sig { override.void }
  def generate; end

  private

  sig { void }
  def create_binstub; end

  sig { void }
  def create_post_require; end

  sig { void }
  def create_sorbet_config; end

  sig { void }
  def create_tapioca_config; end

  sig { returns(Bundler::Installer) }
  def installer; end

  sig { returns(Bundler::StubSpecification) }
  def spec; end
end

class Tapioca::Generators::Require < ::Tapioca::Generators::Base
  sig { params(requires_path: String, sorbet_config_path: String, default_command: String, file_writer: Thor::Actions).void }
  def initialize(requires_path:, sorbet_config_path:, default_command:, file_writer: T.unsafe(nil)); end

  sig { override.void }
  def generate; end
end

class Tapioca::Generators::Todo < ::Tapioca::Generators::Base
  sig { params(todo_file: String, file_header: T::Boolean, default_command: String, file_writer: Thor::Actions).void }
  def initialize(todo_file:, file_header:, default_command:, file_writer: T.unsafe(nil)); end

  sig { override.void }
  def generate; end

  sig { params(command: String, reason: T.nilable(String), strictness: T.nilable(String)).returns(String) }
  def rbi_header(command, reason: T.unsafe(nil), strictness: T.unsafe(nil)); end
end

module Tapioca::GenericTypeRegistry
  class << self
    sig { params(constant: Module).returns(T.nilable(T::Hash[T.any(Tapioca::TypeMember, Tapioca::TypeTemplate), String])) }
    def lookup_type_variables(constant); end

    sig { params(constant: T.untyped, types: T.untyped).returns(Module) }
    def register_type(constant, types); end

    sig { params(constant: T.untyped, type_variable: T.any(Tapioca::TypeMember, Tapioca::TypeTemplate)).void }
    def register_type_variable(constant, type_variable); end

    private

    sig { params(constant: Module, name: String).returns(Module) }
    def create_generic_type(constant, name); end

    sig { params(constant: Class).returns(Class) }
    def create_safe_subclass(constant); end

    sig { params(constant: Module).returns(T::Hash[T.any(Tapioca::TypeMember, Tapioca::TypeTemplate), String]) }
    def lookup_or_initialize_type_variables(constant); end
  end
end

Tapioca::GenericTypeRegistry::TypeVariable = T.type_alias { T.any(Tapioca::TypeMember, Tapioca::TypeTemplate) }

class Tapioca::Loader
  sig { params(gemfile: Tapioca::Gemfile, initialize_file: T.nilable(String), require_file: T.nilable(String)).void }
  def load_bundle(gemfile, initialize_file, require_file); end

  sig { params(environment_load: T::Boolean, eager_load: T::Boolean).void }
  def load_rails_application(environment_load: T.unsafe(nil), eager_load: T.unsafe(nil)); end

  private

  sig { void }
  def eager_load_rails_app; end

  sig { void }
  def load_rails_engines; end

  sig { returns(T::Array[T.untyped]) }
  def rails_engines; end

  sig { params(file: T.nilable(String)).void }
  def require_helper(file); end

  sig { params(path: String).void }
  def safe_require(path); end

  sig { void }
  def silence_deprecations; end
end

module Tapioca::Reflection
  extend ::Tapioca::Reflection

  sig { params(constant: Module).returns(T::Array[Module]) }
  def ancestors_of(constant); end

  sig { params(object: BasicObject, other: BasicObject).returns(T::Boolean) }
  def are_equal?(object, other); end

  sig { params(object: BasicObject).returns(Class) }
  def class_of(object); end

  sig { params(symbol: String, inherit: T::Boolean, namespace: Module).returns(BasicObject) }
  def constantize(symbol, inherit: T.unsafe(nil), namespace: T.unsafe(nil)); end

  sig { params(constant: Module).returns(T::Array[Symbol]) }
  def constants_of(constant); end

  sig { type_parameters(:U).params(klass: T.type_parameter(:U)).returns(T::Array[T.type_parameter(:U)]) }
  def descendants_of(klass); end

  sig { params(constant: Module).returns(T::Array[Module]) }
  def inherited_ancestors_of(constant); end

  sig { params(constant: Module, method: Symbol).returns(Method) }
  def method_of(constant, method); end

  sig { params(constant: Module).returns(T.nilable(String)) }
  def name_of(constant); end

  sig { params(type: T::Types::Base).returns(String) }
  def name_of_type(type); end

  sig { params(object: BasicObject).returns(Integer) }
  def object_id_of(object); end

  sig { params(constant: Module).returns(T::Array[Symbol]) }
  def private_instance_methods_of(constant); end

  sig { params(constant: Module).returns(T::Array[Symbol]) }
  def protected_instance_methods_of(constant); end

  sig { params(constant: Module).returns(T::Array[Symbol]) }
  def public_instance_methods_of(constant); end

  sig { params(constant: Module).returns(T.nilable(String)) }
  def qualified_name_of(constant); end

  sig { params(method: T.any(Method, UnboundMethod)).returns(T.untyped) }
  def signature_of(method); end

  sig { params(constant: Module).returns(Class) }
  def singleton_class_of(constant); end

  sig { params(constant: Class).returns(T.nilable(Class)) }
  def superclass_of(constant); end
end

Tapioca::Reflection::ANCESTORS_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::CLASS_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::CONSTANTS_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::EQUAL_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::METHOD_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::NAME_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::OBJECT_ID_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::PRIVATE_INSTANCE_METHODS_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::PROTECTED_INSTANCE_METHODS_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::PUBLIC_INSTANCE_METHODS_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::SINGLETON_CLASS_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::Reflection::SUPERCLASS_METHOD = T.let(T.unsafe(nil), UnboundMethod)
Tapioca::SORBET_CONFIG_FILE = T.let(T.unsafe(nil), String)
Tapioca::SORBET_DIR = T.let(T.unsafe(nil), String)
Tapioca::TAPIOCA_CONFIG_FILE = T.let(T.unsafe(nil), String)
Tapioca::TAPIOCA_DIR = T.let(T.unsafe(nil), String)
module Tapioca::Trackers; end

module Tapioca::Trackers::Autoload
  class << self
    sig { void }
    def eager_load_all!; end

    sig { params(constant_name: String).void }
    def register(constant_name); end

    sig { type_parameters(:Result).params(block: T.proc.returns(T.type_parameter(:Result))).returns(T.type_parameter(:Result)) }
    def with_disabled_exits(&block); end
  end
end

Tapioca::Trackers::Autoload::NOOP_METHOD = T.let(T.unsafe(nil), Proc)

module Tapioca::Trackers::ConstantDefinition
  extend ::Tapioca::Reflection

  class << self
    def files_for(klass); end
  end
end

module Tapioca::Trackers::Mixin
  class << self
    sig { params(constant: Module).returns(T::Hash[Tapioca::Trackers::Mixin::Type, T::Hash[Module, T::Array[String]]]) }
    def mixin_locations_for(constant); end

    sig { params(constant: Module, mod: Module, mixin_type: Tapioca::Trackers::Mixin::Type, locations: T.nilable(T::Array[Thread::Backtrace::Location])).void }
    def register(constant, mod, mixin_type, locations); end
  end
end

class Tapioca::Trackers::Mixin::Type < ::T::Enum
  enums do
    Prepend = new
    Include = new
    Extend = new
  end
end

class Tapioca::TypeMember < ::T::Types::TypeMember
  sig { params(variance: Symbol, fixed: T.untyped, lower: T.untyped, upper: T.untyped).void }
  def initialize(variance, fixed, lower, upper); end

  sig { returns(T.untyped) }
  def fixed; end

  def lower; end

  sig { returns(T.nilable(String)) }
  def name; end

  def name=(_arg0); end

  sig { returns(String) }
  def serialize; end

  def upper; end
end

class Tapioca::TypeTemplate < ::T::Types::TypeTemplate
  sig { params(variance: Symbol, fixed: T.untyped, lower: T.untyped, upper: T.untyped).void }
  def initialize(variance, fixed, lower, upper); end

  sig { returns(T.untyped) }
  def fixed; end

  def lower; end

  sig { returns(T.nilable(String)) }
  def name; end

  def name=(_arg0); end

  sig { returns(String) }
  def serialize; end

  def upper; end
end

Tapioca::VERSION = T.let(T.unsafe(nil), String)
