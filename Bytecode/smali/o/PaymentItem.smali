.class public Lo/PaymentItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onMessageChannelReady:I = 0xbdfcb8

.field public static final onNavigationEvent:Lo/PaymentItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lo/PaymentItem;

    invoke-direct {v0}, Lo/PaymentItem;-><init>()V

    sput-object v0, Lo/PaymentItem;->onNavigationEvent:Lo/PaymentItem;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gcore_"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xbdfcb8

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    .line 4007
    :try_start_0
    sget-object p1, Lo/preferLastSpan$onMessageChannelReady;->extraCallback:Lo/preferLastSpan$onMessageChannelReady;

    invoke-virtual {p1, p0}, Lo/preferLastSpan$onMessageChannelReady;->onNavigationEvent(Landroid/content/Context;)Lo/component28;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 5005
    iget-object p1, p1, Lo/component28;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 48
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent()Lo/PaymentItem;
    .locals 1

    .line 1
    sget-object v0, Lo/PaymentItem;->onNavigationEvent:Lo/PaymentItem;

    return-object v0
.end method


# virtual methods
.method public extraCallback(Landroid/content/Context;)I
    .locals 1

    const v0, 0xbdfcb8

    .line 3
    invoke-virtual {p0, p1, v0}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public extraCallback(Landroid/content/Context;I)I
    .locals 0

    .line 5
    invoke-static {p1, p2}, Lo/getTotalAmount;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p2

    .line 6
    invoke-static {p1, p2}, Lo/getTotalAmount;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p2, 0x12

    :cond_0
    return p2
.end method

.method public onMessageChannelReady(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 4

    const-string v0, "com.google.android.gms"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_0
    invoke-static {v0}, Lo/getTotalGemsEarned;->onPostMessage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_6

    .line 2015
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {p2}, Lo/component17;->onPostMessage(Landroid/content/pm/PackageManager;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 3015
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt p2, v3, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_5

    .line 1023
    invoke-static {p1}, Lo/component17;->onNavigationEvent(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3016
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p2, v3, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 15
    invoke-static {}, Lo/getTotalGemsEarned;->onPostMessage()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    invoke-static {p1, p3}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lo/getTotalGemsEarned;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public onMessageChannelReady(I)Z
    .locals 0

    .line 11
    invoke-static {p1}, Lo/getTotalAmount;->isUserRecoverableError(I)Z

    move-result p1

    return p1
.end method

.method public onNavigationEvent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    .line 3022
    invoke-virtual {p0, p1, p2, v0}, Lo/PaymentItem;->onMessageChannelReady(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/high16 v0, 0x8000000

    .line 3025
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public onNavigationEvent(I)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p1}, Lo/getTotalAmount;->getErrorString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Landroid/content/Context;)I
    .locals 0

    .line 29
    invoke-static {p1}, Lo/getTotalAmount;->getApkVersion(Landroid/content/Context;)I

    move-result p1

    return p1
.end method
