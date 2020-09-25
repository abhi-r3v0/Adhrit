.class final Lo/setIconifiedByDefault$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setIconifiedByDefault;->onMessageChannelReady(Lo/isIconfiedByDefault;Lo/setSubmitButtonEnabled;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/setIconifiedByDefault;


# direct methods
.method constructor <init>(Lo/setIconifiedByDefault;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lo/setIconifiedByDefault$4;->onPostMessage:Lo/setIconifiedByDefault;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 187
    iget-object v0, p0, Lo/setIconifiedByDefault$4;->onPostMessage:Lo/setIconifiedByDefault;

    invoke-static {v0}, Lo/setIconifiedByDefault;->ICustomTabsCallback(Lo/setIconifiedByDefault;)Lo/setQueryRefinementEnabled;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lo/setIconifiedByDefault$4;->onPostMessage:Lo/setIconifiedByDefault;

    invoke-static {v0}, Lo/setIconifiedByDefault;->ICustomTabsCallback(Lo/setIconifiedByDefault;)Lo/setQueryRefinementEnabled;

    move-result-object v0

    invoke-interface {v0}, Lo/setQueryRefinementEnabled;->onPostMessage()V

    :cond_0
    return-void
.end method
