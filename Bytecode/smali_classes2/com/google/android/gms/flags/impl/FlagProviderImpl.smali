.class public Lcom/google/android/gms/flags/impl/FlagProviderImpl;
.super Lo/MoshiDateAdapter;


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field private onNavigationEvent:Landroid/content/SharedPreferences;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/MoshiDateAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public getBooleanFlagValue(Ljava/lang/String;ZI)Z
    .locals 0

    .line 15
    iget-boolean p3, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onPostMessage:Z

    if-nez p3, :cond_0

    return p2

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onNavigationEvent:Landroid/content/SharedPreferences;

    .line 18
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 19
    invoke-static {p3, p1, p2}, Lo/setCharInputType;->onNavigationEvent(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getIntFlagValue(Ljava/lang/String;II)I
    .locals 0

    .line 20
    iget-boolean p3, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onPostMessage:Z

    if-nez p3, :cond_0

    return p2

    .line 22
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onNavigationEvent:Landroid/content/SharedPreferences;

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 24
    invoke-static {p3, p1, p2}, Lo/DevLog$logLifecycle$1;->ICustomTabsCallback(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getLongFlagValue(Ljava/lang/String;JI)J
    .locals 0

    .line 25
    iget-boolean p4, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onPostMessage:Z

    if-nez p4, :cond_0

    return-wide p2

    .line 27
    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onNavigationEvent:Landroid/content/SharedPreferences;

    .line 28
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 29
    invoke-static {p4, p1, p2}, Lo/isEqual;->ICustomTabsCallback(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getStringFlagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 30
    iget-boolean p3, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onPostMessage:Z

    if-nez p3, :cond_0

    return-object p2

    .line 32
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onNavigationEvent:Landroid/content/SharedPreferences;

    invoke-static {p3, p1, p2}, Lo/CredDateFormat;->ICustomTabsCallback(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Lo/getEventName;)V
    .locals 2

    .line 3
    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onPostMessage:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lo/StatusBarColorKt$setStatusBarInternal$1;->onNavigationEvent(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onNavigationEvent:Landroid/content/SharedPreferences;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/flags/impl/FlagProviderImpl;->onPostMessage:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not retrieve sdk flags, continuing with defaults: "

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "FlagProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return-void
.end method
