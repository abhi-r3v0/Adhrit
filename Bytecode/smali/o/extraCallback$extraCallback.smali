.class public final Lo/extraCallback$extraCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field public static final abc_action_bar_embed_tabs:I = 0x7f050000

.field public static final abc_allow_stacked_button_bar:I = 0x7f050001

.field public static final abc_config_actionMenuItemAllCaps:I = 0x7f050002


# instance fields
.field private final ICustomTabsCallback:Landroid/content/ComponentName;

.field private final extraCallback:Ljava/lang/Object;

.field private final onMessageChannelReady:Landroid/support/customtabs/ICustomTabsService;

.field private final onNavigationEvent:Landroid/support/customtabs/ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\$\\{(.*?)\\}"

    .line 3004
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V
    .locals 1

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/extraCallback$extraCallback;->extraCallback:Ljava/lang/Object;

    .line 1065
    iput-object p1, p0, Lo/extraCallback$extraCallback;->onMessageChannelReady:Landroid/support/customtabs/ICustomTabsService;

    .line 1066
    iput-object p2, p0, Lo/extraCallback$extraCallback;->onNavigationEvent:Landroid/support/customtabs/ICustomTabsCallback;

    .line 1067
    iput-object p3, p0, Lo/extraCallback$extraCallback;->ICustomTabsCallback:Landroid/content/ComponentName;

    return-void
.end method

.method public static varargs extraCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 2413
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2419
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    const-string v3, "%s"

    .line 2420
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2424
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    .line 2425
    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v3, 0x2

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    .line 2428
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    array-length p0, p1

    if-ge v1, p0, :cond_2

    const-string p0, " ["

    .line 2432
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v1, 0x1

    .line 2433
    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2434
    :goto_1
    array-length v1, p1

    if-ge p0, v1, :cond_1

    const-string v1, ", "

    .line 2435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p0, 0x1

    .line 2436
    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move p0, v1

    goto :goto_1

    :cond_1
    const/16 p0, 0x5d

    .line 2438
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2441
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 3003
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3002
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1088
    :try_start_0
    iget-object p2, p0, Lo/extraCallback$extraCallback;->onMessageChannelReady:Landroid/support/customtabs/ICustomTabsService;

    iget-object p3, p0, Lo/extraCallback$extraCallback;->onNavigationEvent:Landroid/support/customtabs/ICustomTabsCallback;

    const/4 v0, 0x0

    invoke-interface {p2, p3, p1, v0, v0}, Landroid/support/customtabs/ICustomTabsService;->mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
