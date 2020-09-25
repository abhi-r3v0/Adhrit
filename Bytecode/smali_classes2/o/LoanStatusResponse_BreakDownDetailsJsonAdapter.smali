.class final synthetic Lo/LoanStatusResponse_BreakDownDetailsJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field static final synthetic onNavigationEvent:[I

.field static final synthetic onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lo/LoanStatusResponse_KycDataJsonAdapter;->values()[Lo/LoanStatusResponse_KycDataJsonAdapter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/LoanStatusResponse_BreakDownDetailsJsonAdapter;->onPostMessage:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/LoanStatusResponse_KycDataJsonAdapter;->onTransact:Lo/LoanStatusResponse_KycDataJsonAdapter;

    invoke-virtual {v2}, Lo/LoanStatusResponse_KycDataJsonAdapter;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo/LoanStatusResponse_BreakDownDetailsJsonAdapter;->onPostMessage:[I

    sget-object v3, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback$Stub:Lo/LoanStatusResponse_KycDataJsonAdapter;

    invoke-virtual {v3}, Lo/LoanStatusResponse_KycDataJsonAdapter;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lo/LoanStatusResponse_BreakDownDetailsJsonAdapter;->onPostMessage:[I

    sget-object v4, Lo/LoanStatusResponse_KycDataJsonAdapter;->asBinder:Lo/LoanStatusResponse_KycDataJsonAdapter;

    invoke-virtual {v4}, Lo/LoanStatusResponse_KycDataJsonAdapter;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->values()[Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lo/LoanStatusResponse_BreakDownDetailsJsonAdapter;->onNavigationEvent:[I

    :try_start_3
    sget-object v4, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    invoke-virtual {v4}, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lo/LoanStatusResponse_BreakDownDetailsJsonAdapter;->onNavigationEvent:[I

    sget-object v3, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    invoke-virtual {v3}, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lo/LoanStatusResponse_BreakDownDetailsJsonAdapter;->onNavigationEvent:[I

    sget-object v1, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    invoke-virtual {v1}, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
