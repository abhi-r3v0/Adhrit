.class final Lo/AutoDebitConfigResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/AutoDebitAddMandateResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/AutoDebitConfigResponse;->extraCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/AutoDebitConfigResponse;->extraCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

    invoke-static {v0}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;)Lo/applyTo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AutoDebitConfigResponse;->extraCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

    invoke-static {v0}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;)Lo/applyTo;

    move-result-object v0

    invoke-virtual {v0}, Lo/applyTo;->extraCallback()V

    iget-object v0, p0, Lo/AutoDebitConfigResponse;->extraCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;Lo/applyTo;)Lo/applyTo;

    :cond_0
    return-void
.end method
