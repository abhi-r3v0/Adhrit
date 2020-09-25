.class final Lo/setIconifiedByDefault$2;
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
.field private synthetic onMessageChannelReady:Lo/setIconifiedByDefault;


# direct methods
.method constructor <init>(Lo/setIconifiedByDefault;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lo/setIconifiedByDefault$2;->onMessageChannelReady:Lo/setIconifiedByDefault;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 175
    iget-object v0, p0, Lo/setIconifiedByDefault$2;->onMessageChannelReady:Lo/setIconifiedByDefault;

    invoke-static {v0}, Lo/setIconifiedByDefault;->ICustomTabsCallback(Lo/setIconifiedByDefault;)Lo/setQueryRefinementEnabled;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lo/setIconifiedByDefault$2;->onMessageChannelReady:Lo/setIconifiedByDefault;

    invoke-static {v0}, Lo/setIconifiedByDefault;->ICustomTabsCallback(Lo/setIconifiedByDefault;)Lo/setQueryRefinementEnabled;

    move-result-object v0

    invoke-interface {v0}, Lo/setQueryRefinementEnabled;->onNavigationEvent()V

    :cond_0
    return-void
.end method
