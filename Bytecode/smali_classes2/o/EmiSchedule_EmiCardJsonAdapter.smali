.class final Lo/EmiSchedule_EmiCardJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LoanStatusResponse_DataJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/LoanStatusResponse_DataJsonAdapter<",
        "Lo/EmiScreenResponse$BottomBanner$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(I)Lo/LoanStatusResponse_DetailJsonAdapter;
    .locals 0

    invoke-static {p1}, Lo/EmiScreenResponse$BottomBanner$extraCallback;->extraCallback(I)Lo/EmiScreenResponse$BottomBanner$extraCallback;

    move-result-object p1

    return-object p1
.end method
