.class final Lo/LoanStatusResponse_SmsDataJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/PollMessageJsonAdapter;


# static fields
.field private static final ICustomTabsCallback:Lo/LoanSummary$LoanRepaymentData;


# instance fields
.field private final onNavigationEvent:Lo/LoanSummary$LoanRepaymentData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/LoanStatusResponse_StashSummaryDataJsonAdapter;

    invoke-direct {v0}, Lo/LoanStatusResponse_StashSummaryDataJsonAdapter;-><init>()V

    sput-object v0, Lo/LoanStatusResponse_SmsDataJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$LoanRepaymentData;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lo/LoanStatusResponse_StashDetailsJsonAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/LoanSummary$LoanRepaymentData;

    invoke-static {}, Lo/LoanStatusResponse_CaptchaInputJsonAdapter;->onMessageChannelReady()Lo/LoanStatusResponse_CaptchaInputJsonAdapter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lo/LoanStatusResponse_SmsDataJsonAdapter;->extraCallback()Lo/LoanSummary$LoanRepaymentData;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo/LoanStatusResponse_StashDetailsJsonAdapter;-><init>([Lo/LoanSummary$LoanRepaymentData;)V

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_SmsDataJsonAdapter;-><init>(Lo/LoanSummary$LoanRepaymentData;)V

    return-void
.end method

.method private constructor <init>(Lo/LoanSummary$LoanRepaymentData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LoanSummary$LoanRepaymentData;

    iput-object p1, p0, Lo/LoanStatusResponse_SmsDataJsonAdapter;->onNavigationEvent:Lo/LoanSummary$LoanRepaymentData;

    return-void
.end method

.method private static extraCallback()Lo/LoanSummary$LoanRepaymentData;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanSummary$LoanRepaymentData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lo/LoanStatusResponse_SmsDataJsonAdapter;->ICustomTabsCallback:Lo/LoanSummary$LoanRepaymentData;

    return-object v0
.end method

.method private static onPostMessage(Lo/LoanSummary;)Z
    .locals 1

    invoke-interface {p0}, Lo/LoanSummary;->extraCallback()I

    move-result p0

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback$Stub:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Class;)Lo/PoweredBy;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/PoweredBy<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lo/PossibleValues;->onNavigationEvent(Ljava/lang/Class;)V

    iget-object v0, p0, Lo/LoanStatusResponse_SmsDataJsonAdapter;->onNavigationEvent:Lo/LoanSummary$LoanRepaymentData;

    invoke-interface {v0, p1}, Lo/LoanSummary$LoanRepaymentData;->onPostMessage(Ljava/lang/Class;)Lo/LoanSummary;

    move-result-object v2

    invoke-interface {v2}, Lo/LoanSummary;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lo/PossibleValues;->onMessageChannelReady()Lo/StashDataResponseJsonAdapter;

    move-result-object p1

    invoke-static {}, Lo/LoanStatusResponse_BodyJsonAdapter;->onPostMessage()Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    move-result-object v0

    invoke-interface {v2}, Lo/LoanSummary;->onPostMessage()Lo/LoanSummary$Details;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo/LoanSummaryDataJsonAdapter;->extraCallback(Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanSummary$Details;)Lo/LoanSummaryDataJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lo/PossibleValues;->onPostMessage()Lo/StashDataResponseJsonAdapter;

    move-result-object p1

    invoke-static {}, Lo/LoanStatusResponse_BodyJsonAdapter;->onNavigationEvent()Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    move-result-object v0

    invoke-interface {v2}, Lo/LoanSummary;->onPostMessage()Lo/LoanSummary$Details;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo/LoanSummaryDataJsonAdapter;->extraCallback(Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanSummary$Details;)Lo/LoanSummaryDataJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lo/LoanStatusResponse_SmsDataJsonAdapter;->onPostMessage(Lo/LoanSummary;)Z

    move-result v0

    invoke-static {}, Lo/NoteDetailsJsonAdapter;->onNavigationEvent()Lo/NoteDetails;

    move-result-object v3

    invoke-static {}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->onMessageChannelReady()Lo/LoanStatusResponse_ScheduleJsonAdapter;

    move-result-object v4

    invoke-static {}, Lo/PossibleValues;->onMessageChannelReady()Lo/StashDataResponseJsonAdapter;

    move-result-object v5

    if-eqz v0, :cond_2

    invoke-static {}, Lo/LoanStatusResponse_BodyJsonAdapter;->onPostMessage()Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    move-result-object v6

    invoke-static {}, Lo/LoanStatusResponse_UserDetailJsonAdapter;->onMessageChannelReady()Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanSummary;Lo/NoteDetails;Lo/LoanStatusResponse_ScheduleJsonAdapter;Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;)Lo/LoanSummary_ChargesJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v6, 0x0

    invoke-static {}, Lo/LoanStatusResponse_UserDetailJsonAdapter;->onMessageChannelReady()Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanSummary;Lo/NoteDetails;Lo/LoanStatusResponse_ScheduleJsonAdapter;Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;)Lo/LoanSummary_ChargesJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lo/LoanStatusResponse_SmsDataJsonAdapter;->onPostMessage(Lo/LoanSummary;)Z

    move-result v0

    invoke-static {}, Lo/NoteDetailsJsonAdapter;->extraCallback()Lo/NoteDetails;

    move-result-object v3

    invoke-static {}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->ICustomTabsCallback()Lo/LoanStatusResponse_ScheduleJsonAdapter;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-static {}, Lo/PossibleValues;->onPostMessage()Lo/StashDataResponseJsonAdapter;

    move-result-object v5

    invoke-static {}, Lo/LoanStatusResponse_BodyJsonAdapter;->onNavigationEvent()Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    move-result-object v6

    invoke-static {}, Lo/LoanStatusResponse_UserDetailJsonAdapter;->onNavigationEvent()Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanSummary;Lo/NoteDetails;Lo/LoanStatusResponse_ScheduleJsonAdapter;Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;)Lo/LoanSummary_ChargesJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lo/PossibleValues;->extraCallback()Lo/StashDataResponseJsonAdapter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lo/LoanStatusResponse_UserDetailJsonAdapter;->onNavigationEvent()Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;Lo/LoanSummary;Lo/NoteDetails;Lo/LoanStatusResponse_ScheduleJsonAdapter;Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;)Lo/LoanSummary_ChargesJsonAdapter;

    move-result-object p1

    return-object p1
.end method
