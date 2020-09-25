.class public abstract Lo/ClaimedRewardResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected final ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

.field private final ICustomTabsCallback$Stub:I

.field private final asBinder:Ljava/lang/String;

.field protected final extraCallback:Lo/SubmitScoreRequestJsonAdapter;

.field private final onMessageChannelReady:Ljava/lang/String;

.field protected onNavigationEvent:Ljava/lang/reflect/Method;

.field private final onPostMessage:Ljava/lang/String;

.field private final onTransact:I


# direct methods
.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ClaimedRewardResponse;->onPostMessage:Ljava/lang/String;

    iput-object p1, p0, Lo/ClaimedRewardResponse;->extraCallback:Lo/SubmitScoreRequestJsonAdapter;

    iput-object p2, p0, Lo/ClaimedRewardResponse;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/ClaimedRewardResponse;->asBinder:Ljava/lang/String;

    iput-object p4, p0, Lo/ClaimedRewardResponse;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    iput p5, p0, Lo/ClaimedRewardResponse;->ICustomTabsCallback$Stub:I

    iput p6, p0, Lo/ClaimedRewardResponse;->onTransact:I

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lo/ClaimedRewardResponse;->extraCallback()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public extraCallback()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lo/ClaimedRewardResponse;->extraCallback:Lo/SubmitScoreRequestJsonAdapter;

    iget-object v4, p0, Lo/ClaimedRewardResponse;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, p0, Lo/ClaimedRewardResponse;->asBinder:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lo/ClaimedRewardResponse;->onNavigationEvent:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo/ClaimedRewardResponse;->onNavigationEvent()V

    iget-object v3, p0, Lo/ClaimedRewardResponse;->extraCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v3}, Lo/SubmitScoreRequestJsonAdapter;->asInterface()Lo/getConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, p0, Lo/ClaimedRewardResponse;->ICustomTabsCallback$Stub:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    iget v4, p0, Lo/ClaimedRewardResponse;->onTransact:I

    iget v5, p0, Lo/ClaimedRewardResponse;->ICustomTabsCallback$Stub:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v6, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lo/getConfig;->extraCallback(IIJ)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method protected abstract onNavigationEvent()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method
