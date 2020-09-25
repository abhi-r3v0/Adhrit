.class public final Lo/EmiScreenResponseJsonAdapter$onPostMessage;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiScreenResponseJsonAdapter;",
        "Lo/EmiScreenResponseJsonAdapter$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiScreenResponseJsonAdapter;->onPostMessage()Lo/EmiScreenResponseJsonAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiScreenResponse_ChildCardJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiScreenResponseJsonAdapter$onPostMessage;-><init>()V

    return-void
.end method
