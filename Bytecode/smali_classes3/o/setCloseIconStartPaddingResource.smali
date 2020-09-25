.class final Lo/setCloseIconStartPaddingResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onMessageChannelReady:Lo/setIconEndPaddingResource;

.field private final synthetic onNavigationEvent:Landroid/net/Uri;

.field private final synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lo/setIconEndPaddingResource;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCloseIconStartPaddingResource;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    iput-boolean p2, p0, Lo/setCloseIconStartPaddingResource;->onPostMessage:Z

    iput-object p3, p0, Lo/setCloseIconStartPaddingResource;->onNavigationEvent:Landroid/net/Uri;

    iput-object p4, p0, Lo/setCloseIconStartPaddingResource;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p5, p0, Lo/setCloseIconStartPaddingResource;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lo/setCloseIconStartPaddingResource;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    iget-boolean v1, p0, Lo/setCloseIconStartPaddingResource;->onPostMessage:Z

    iget-object v2, p0, Lo/setCloseIconStartPaddingResource;->onNavigationEvent:Landroid/net/Uri;

    iget-object v3, p0, Lo/setCloseIconStartPaddingResource;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v4, p0, Lo/setCloseIconStartPaddingResource;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lo/setIconEndPaddingResource;->onMessageChannelReady(Lo/setIconEndPaddingResource;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
