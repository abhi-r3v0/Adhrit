.class public final Lo/EmiDetailsJsonAdapter$onMessageChannelReady;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiDetailsJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiDetailsJsonAdapter;",
        "Lo/EmiDetailsJsonAdapter$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiDetailsJsonAdapter;->extraCallback()Lo/EmiDetailsJsonAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiSchedule$Details;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiDetailsJsonAdapter$onMessageChannelReady;-><init>()V

    return-void
.end method
