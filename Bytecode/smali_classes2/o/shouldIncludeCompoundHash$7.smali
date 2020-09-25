.class final Lo/shouldIncludeCompoundHash$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

.field private synthetic onNavigationEvent:Lo/resume;

.field private synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash;Lo/resume;Z)V
    .locals 0

    .line 425
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$7;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    iput-object p2, p0, Lo/shouldIncludeCompoundHash$7;->onNavigationEvent:Lo/resume;

    iput-boolean p3, p0, Lo/shouldIncludeCompoundHash$7;->onPostMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 428
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$7;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 1065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsService:Lo/getConnectionUrl;

    .line 428
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$7;->onNavigationEvent:Lo/resume;

    iget-boolean v2, p0, Lo/shouldIncludeCompoundHash$7;->onPostMessage:Z

    invoke-virtual {v0, v1, v2}, Lo/getConnectionUrl;->onMessageChannelReady(Ljava/lang/Object;Z)V

    return-void
.end method
