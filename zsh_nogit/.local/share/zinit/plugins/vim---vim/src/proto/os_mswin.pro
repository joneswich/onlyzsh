/* os_mswin.c */
void mch_exit_g(int r);
void mch_early_init(void);
int mch_input_isatty(void);
void mch_settitle(char_u *title, char_u *icon);
void mch_restore_title(int which);
int mch_can_restore_title(void);
int mch_can_restore_icon(void);
int mch_FullName(char_u *fname, char_u *buf, int len, int force);
int mch_isFullName(char_u *fname);
void slash_adjust(char_u *p);
char_u *resolve_appexeclink(char_u *fname);
int vim_stat(const char *name, stat_T *stp);
void mch_settmode(tmode_T tmode);
int mch_get_shellsize(void);
void mch_set_shellsize(void);
void mch_new_shellsize(void);
void mch_suspend(void);
void display_errors(void);
int mch_has_exp_wildcard(char_u *p);
int mch_has_wildcard(char_u *p);
int mch_chdir(char *path);
int mch_icon_load(HANDLE *iconp);
int mch_libcall(char_u *libname, char_u *funcname, char_u *argstring, int argint, char_u **string_result, int *number_result);
void DumpPutS(const char *psz);
int mch_get_winpos(int *x, int *y);
void mch_set_winpos(int x, int y);
void mch_print_cleanup(void);
int mch_print_init(prt_settings_T *psettings, char_u *jobname, int forceit);
int mch_print_begin(prt_settings_T *psettings);
void mch_print_end(prt_settings_T *psettings);
int mch_print_end_page(void);
int mch_print_begin_page(char_u *msg);
int mch_print_blank_page(void);
void mch_print_start_line(int margin, int page_line);
int mch_print_text_out(char_u *p, int len);
void mch_print_set_font(int iBold, int iItalic, int iUnderline);
void mch_print_set_bg(long_u bgcol);
void mch_print_set_fg(long_u fgcol);
char_u *mch_resolve_path(char_u *fname, int reparse_point);
void win32_set_foreground(void);
void serverInitMessaging(void);
void serverSetName(char_u *name);
char_u *serverGetVimNames(void);
int serverSendReply(char_u *name, char_u *reply);
int serverSendToVim(char_u *name, char_u *cmd, char_u **result, void *ptarget, int asExpr, int timeout, int silent);
void serverForeground(char_u *name);
char_u *serverGetReply(HWND server, int *expr_res, int remove, int wait, int timeout);
void serverProcessPendingMessages(void);
char *charset_id2name(int id);
char *quality_id2name(DWORD id);
int get_logfont(LOGFONTW *lf, char_u *name, HDC printer_dc, int verbose);
void channel_init_winsock(void);
/* vim: set ft=c : */
