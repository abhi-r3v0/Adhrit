.class public final Lo/getOpticalBounds;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getOpticalBounds$onNavigationEvent;
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
.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/getOpticalBounds;->onPostMessage:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 2

    .line 19
    check-cast p1, Landroid/net/Uri;

    const/high16 p4, -0x80000000

    if-eq p2, p4, :cond_0

    if-eq p3, p4, :cond_0

    const/16 p4, 0x200

    if-gt p2, p4, :cond_0

    const/16 p2, 0x180

    if-gt p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3032
    new-instance p2, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p3, Lo/setSoftInputMode;

    invoke-direct {p3, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lo/getOpticalBounds;->onPostMessage:Landroid/content/Context;

    .line 4033
    new-instance v0, Lo/getDropDownWidth$onPostMessage;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/getDropDownWidth$onPostMessage;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p4, p1, v0}, Lo/getDropDownWidth;->onMessageChannelReady(Landroid/content/Context;Landroid/net/Uri;Lo/setPrompt;)Lo/getDropDownWidth;

    move-result-object p1

    .line 3032
    invoke-direct {p2, p3, p1}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 1

    .line 19
    check-cast p1, Landroid/net/Uri;

    .line 2032
    invoke-static {p1}, Lo/extraCallback;->onNavigationEvent(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3024
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const-string/jumbo v0, "video"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
