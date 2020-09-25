.class public final Lo/EmiScreenResponse_CustomJsonAdapter$onPostMessage;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse_CustomJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiScreenResponse_CustomJsonAdapter;",
        "Lo/EmiScreenResponse_CustomJsonAdapter$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiScreenResponse_CustomJsonAdapter;->ICustomTabsCallback()Lo/EmiScreenResponse_CustomJsonAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiScreenResponse_ScreenDataJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiScreenResponse_CustomJsonAdapter$onPostMessage;-><init>()V

    return-void
.end method
