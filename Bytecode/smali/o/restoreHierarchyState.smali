.class public final Lo/restoreHierarchyState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/restoreHierarchyState$onNavigationEvent;,
        Lo/restoreHierarchyState$onPostMessage;,
        Lo/restoreHierarchyState$onMessageChannelReady;,
        Lo/restoreHierarchyState$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "Ljava/lang/Integer;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Landroid/content/res/Resources;

.field private final onNavigationEvent:Lo/setNavigationContentDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNavigationContentDescription<",
            "Landroid/net/Uri;",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lo/setNavigationContentDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/setNavigationContentDescription<",
            "Landroid/net/Uri;",
            "TData;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/restoreHierarchyState;->extraCallback:Landroid/content/res/Resources;

    .line 29
    iput-object p2, p0, Lo/restoreHierarchyState;->onNavigationEvent:Lo/setNavigationContentDescription;

    return-void
.end method

.method private onMessageChannelReady(Ljava/lang/Integer;)Landroid/net/Uri;
    .locals 4

    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/restoreHierarchyState;->extraCallback:Landroid/content/res/Resources;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/restoreHierarchyState;->extraCallback:Landroid/content/res/Resources;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/restoreHierarchyState;->extraCallback:Landroid/content/res/Resources;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ResourceLoader"

    .line 51
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Received invalid resource id: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 1

    .line 20
    check-cast p1, Ljava/lang/Integer;

    .line 1035
    invoke-direct {p0, p1}, Lo/restoreHierarchyState;->onMessageChannelReady(Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1036
    :cond_0
    iget-object v0, p0, Lo/restoreHierarchyState;->onNavigationEvent:Lo/setNavigationContentDescription;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/setNavigationContentDescription;->extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
