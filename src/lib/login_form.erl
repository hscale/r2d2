-module(login_form, [InitialData, Errors]).
-compile(export_all).

form_fields() ->
    [
     {username, [{type, char_field},
                 {label, "Username"},
                 {required, true},
                 {min_length, 5},
                 {max_length, 255},
                 {html_options, [{class, "form-control"},
                                {placeholder, "Email address"},
                                {autofocus, autofocus},
                                {required, required}]}]},
     {password, [{type, char_field},
                 {widget, password_input},
                 {label, "Password"},
                 {min_length, 5},
                 {max_length, 25},
                 {required, true},
                 {html_options, [{class, "form-control"},
                                {placeholder, "Password"},
                                {required, required}]}]}
    ].



%% Proxies
data() ->
    InitialData.

errors() ->
    Errors.

fields() ->
    boss_form:fields(form_fields(), InitialData, Errors).

as_table() ->
    boss_form:as_table(form_fields(), InitialData, Errors).

