.class public final Lo/EmiScreenResponse$Custom$extraCallback;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse$Custom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiScreenResponse$Custom;",
        "Lo/EmiScreenResponse$Custom$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiScreenResponse$Custom;->onPostMessage()Lo/EmiScreenResponse$Custom;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiScreenResponse$CardData;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiScreenResponse$Custom$extraCallback;-><init>()V

    return-void
.end method
