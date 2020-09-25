.class public final Lo/isFocused;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isFocused$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/isFocused;->onNavigationEvent:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 4

    .line 26
    check-cast p1, Landroid/net/Uri;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    const/16 v2, 0x200

    if-gt p2, v2, :cond_0

    const/16 p2, 0x180

    if-gt p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 4047
    sget-object p2, Lo/onTouch;->onMessageChannelReady:Lo/setInternalImageTint;

    .line 5027
    iget-object p3, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p3, p2}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p3, p2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 5101
    :cond_1
    iget-object p2, p2, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 4047
    :goto_1
    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_2

    .line 4048
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p4, p2, v2

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 3040
    new-instance p2, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p3, Lo/setSoftInputMode;

    invoke-direct {p3, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lo/isFocused;->onNavigationEvent:Landroid/content/Context;

    .line 6037
    new-instance v0, Lo/getDropDownWidth$ICustomTabsCallback;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/getDropDownWidth$ICustomTabsCallback;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p4, p1, v0}, Lo/getDropDownWidth;->onMessageChannelReady(Landroid/content/Context;Landroid/net/Uri;Lo/setPrompt;)Lo/getDropDownWidth;

    move-result-object p1

    .line 3040
    invoke-direct {p2, p3, p1}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 1

    .line 26
    check-cast p1, Landroid/net/Uri;

    .line 2028
    invoke-static {p1}, Lo/extraCallback;->onNavigationEvent(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3024
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const-string/jumbo v0, "video"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
