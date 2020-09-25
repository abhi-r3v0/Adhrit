.class public final Lo/Details$extraCallback;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/Details;",
        "Lo/Details$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/Details;->onMessageChannelReady()Lo/Details;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/DetailXJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/Details$extraCallback;-><init>()V

    return-void
.end method
