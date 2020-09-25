.class final Lo/createSeekBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/createSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/createSeekBar;


# direct methods
.method constructor <init>(Lo/createSeekBar;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lo/createSeekBar$1;->ICustomTabsCallback:Lo/createSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lo/createSeekBar$1;->ICustomTabsCallback:Lo/createSeekBar;

    invoke-static {v0}, Lo/createSeekBar;->ICustomTabsCallback(Lo/createSeekBar;)Lo/verifyNotNull;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lo/createSeekBar$1;->ICustomTabsCallback:Lo/createSeekBar;

    invoke-static {v0}, Lo/createSeekBar;->ICustomTabsCallback(Lo/createSeekBar;)Lo/verifyNotNull;

    move-result-object v0

    .line 1028
    iget-object v1, v0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lo/createSeekBar$1;->ICustomTabsCallback:Lo/createSeekBar;

    .line 2028
    iget-object v0, v0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    .line 131
    invoke-static {v1, v0}, Lo/createSeekBar;->ICustomTabsCallback(Lo/createSeekBar;Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lo/createSeekBar$1;->ICustomTabsCallback:Lo/createSeekBar;

    .line 2032
    iget-object v0, v0, Lo/verifyNotNull;->ICustomTabsCallback:Ljava/lang/Throwable;

    .line 133
    invoke-static {v1, v0}, Lo/createSeekBar;->onPostMessage(Lo/createSeekBar;Ljava/lang/Throwable;)V

    return-void
.end method
