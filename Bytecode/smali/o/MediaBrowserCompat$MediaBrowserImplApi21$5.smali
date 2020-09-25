.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$database$core$view$QueryParams$ViewFrom:[I


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3215
    invoke-static {}, Lo/recursiveDelete$onNavigationEvent;->values()[Lo/recursiveDelete$onNavigationEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->$SwitchMap$com$google$firebase$database$core$view$QueryParams$ViewFrom:[I

    :try_start_0
    sget-object v1, Lo/recursiveDelete$onNavigationEvent;->LEFT:Lo/recursiveDelete$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->$SwitchMap$com$google$firebase$database$core$view$QueryParams$ViewFrom:[I

    sget-object v1, Lo/recursiveDelete$onNavigationEvent;->RIGHT:Lo/recursiveDelete$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->onMessageChannelReady:I

    .line 2022
    iput p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->ICustomTabsCallback:I

    .line 2023
    iput-object p3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->onNavigationEvent:Ljava/lang/String;

    .line 2024
    iput-object p4, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/String;Lo/onSessionEvent;Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 4

    .line 84
    instance-of v0, p1, Landroidx/biometric/DeviceCredentialHandlerActivity;

    if-nez v0, :cond_0

    const-string p1, "Failed to check device credential. Parent handler not found."

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    check-cast p1, Landroidx/biometric/DeviceCredentialHandlerActivity;

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 94
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroidx/biometric/DeviceCredentialHandlerActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    goto :goto_0

    :cond_1
    const-string v0, "keyguard"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    instance-of v1, v0, Landroid/app/KeyguardManager;

    if-nez v1, :cond_2

    const-string p2, "Failed to check device credential. KeyguardManager not found."

    .line 98
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1, v2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->onMessageChannelReady(I)V

    return-void

    .line 102
    :cond_2
    check-cast v0, Landroid/app/KeyguardManager;

    :goto_0
    if-nez v0, :cond_3

    const-string p2, "Failed to check device credential. KeyguardManager was null."

    .line 106
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1, v2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->onMessageChannelReady(I)V

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const-string/jumbo v1, "title"

    .line 115
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v3, "subtitle"

    .line 116
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_4
    move-object p2, v1

    .line 123
    :goto_1
    invoke-virtual {v0, v1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_5

    const-string p2, "Failed to check device credential. Got null intent from Keyguard."

    .line 125
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1, v2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->onMessageChannelReady(I)V

    return-void

    .line 1095
    :cond_5
    sget-object p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-nez p0, :cond_6

    .line 1096
    new-instance p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    invoke-direct {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;-><init>()V

    sput-object p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    .line 1098
    :cond_6
    sget-object p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    const/4 v0, 0x1

    .line 1241
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    const/4 v0, 0x2

    .line 1264
    iput v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    if-eqz p3, :cond_7

    .line 137
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_7
    const/high16 p0, 0x8080000

    .line 141
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, p2, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 13

    .line 3020
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "test-keys"

    .line 3021
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    const-string v3, "/system/app/Superuser.apk"

    const-string v4, "/sbin/su"

    const-string v5, "/system/bin/su"

    const-string v6, "/system/xbin/su"

    const-string v7, "/data/local/xbin/su"

    const-string v8, "/data/local/bin/su"

    const-string v9, "/system/sd/xbin/su"

    const-string v10, "/system/bin/failsafe/su"

    const-string v11, "/data/local/su"

    const-string v12, "/su/bin/su"

    .line 3025
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 3027
    aget-object v4, v0, v3

    .line 3028
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    .line 3016
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v1
.end method

.method static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 234
    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p0, v1

    .line 235
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static extraCallback()Z
    .locals 5

    const/4 v0, 0x0

    .line 3036
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "/system/xbin/which"

    const-string/jumbo v3, "su"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3037
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3038
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 3043
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_2
    return v0

    :catchall_0
    nop

    goto :goto_0

    :catchall_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_3
    return v0
.end method

.method static extraCallback(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
