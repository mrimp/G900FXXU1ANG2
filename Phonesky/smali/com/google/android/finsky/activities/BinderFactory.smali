.class public Lcom/google/android/finsky/activities/BinderFactory;
.super Ljava/lang/Object;
.source "BinderFactory.java"


# direct methods
.method public static getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;ILandroid/accounts/Account;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
    .locals 7

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-direct {v0, p0, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageMonitorReceiver()Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    invoke-direct {v0, p0, p2}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;

    invoke-direct {v0, p0, p2}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;

    invoke-direct {v0, p0, p2}, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryBooksViewBinder;

    invoke-direct {v0, p0, p2}, Lcom/google/android/finsky/activities/DetailsSummaryBooksViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
