.class Lo/ICustomTabsService$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/ICustomTabsService;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lo/ICustomTabsService$4;->ICustomTabsCallback:Lo/ICustomTabsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    iget-object v0, p0, Lo/ICustomTabsService$4;->ICustomTabsCallback:Lo/ICustomTabsService;

    iget v0, v0, Lo/ICustomTabsService;->updateVisuals:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lo/ICustomTabsService$4;->ICustomTabsCallback:Lo/ICustomTabsService;

    invoke-virtual {v0, v1}, Lo/ICustomTabsService;->asBinder(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lo/ICustomTabsService$4;->ICustomTabsCallback:Lo/ICustomTabsService;

    iget v0, v0, Lo/ICustomTabsService;->updateVisuals:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lo/ICustomTabsService$4;->ICustomTabsCallback:Lo/ICustomTabsService;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Lo/ICustomTabsService;->asBinder(I)V

    .line 273
    :cond_1
    iget-object v0, p0, Lo/ICustomTabsService$4;->ICustomTabsCallback:Lo/ICustomTabsService;

    iput-boolean v1, v0, Lo/ICustomTabsService;->mayLaunchUrl:Z

    .line 274
    iget-object v0, p0, Lo/ICustomTabsService$4;->ICustomTabsCallback:Lo/ICustomTabsService;

    iput v1, v0, Lo/ICustomTabsService;->updateVisuals:I

    return-void
.end method
