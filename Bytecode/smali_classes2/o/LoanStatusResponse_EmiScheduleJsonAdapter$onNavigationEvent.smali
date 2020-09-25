.class public abstract Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onNavigationEvent;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LoanStatusResponse_EmiScheduleJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onNavigationEvent<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zzdtz:Lo/LoanStatusResponse_AccountDetailsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;-><init>()V

    invoke-static {}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onMessageChannelReady()Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onNavigationEvent;->zzdtz:Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    return-void
.end method
