.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$ICustomTabsCallback;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Body;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Info;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$ScheduleCharge;,
        Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0006EFGHIJB\u008b\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000b\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0002\u0010\u0017J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u0011\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u00a5\u0001\u00107\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00c6\u0001J\t\u00108\u001a\u000209H\u00d6\u0001J\u0013\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u00d6\u0003J\t\u0010>\u001a\u000209H\u00d6\u0001J\t\u0010?\u001a\u00020\u0014H\u00d6\u0001J\u0019\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u000209H\u00d6\u0001R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010!R\u0019\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010%R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010!\u00a8\u0006K"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;",
        "Landroid/os/Parcelable;",
        "header",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "header_upper",
        "header_lower",
        "loan_details",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;",
        "charges",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;",
        "loan_repayment_data",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;",
        "loan_summary_data",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;",
        "upcoming_emi_data",
        "Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;",
        "overdue_emi_data",
        "inprogress_emi_data",
        "sequence",
        "",
        "floating_cta",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "(Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V",
        "getCharges",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;",
        "getFloating_cta",
        "()Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "getHeader",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getHeader_lower",
        "getHeader_upper",
        "getInprogress_emi_data",
        "()Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;",
        "getLoan_details",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;",
        "getLoan_repayment_data",
        "()Ljava/util/List;",
        "getLoan_summary_data",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;",
        "getOverdue_emi_data",
        "getSequence",
        "getUpcoming_emi_data",
        "component1",
        "component10",
        "component11",
        "component12",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Body",
        "Charges",
        "Details",
        "Info",
        "LoanRepaymentData",
        "ScheduleCharge",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

.field final ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

.field final ICustomTabsService:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

.field final asBinder:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

.field final asInterface:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

.field final extraCallback:Lo/getTargetScrollPosition;

.field public final onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

.field public final onNavigationEvent:Lo/getTargetScrollPosition;

.field public final onPostMessage:Lo/getTargetScrollPosition;

.field final onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

.field public final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;",
            ">;"
        }
    .end annotation
.end field

.field final warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$ICustomTabsCallback;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V
    .locals 0
    .param p5    # Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "charges"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTargetScrollPosition;",
            "Lo/getTargetScrollPosition;",
            "Lo/getTargetScrollPosition;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->extraCallback:Lo/getTargetScrollPosition;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onNavigationEvent:Lo/getTargetScrollPosition;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onPostMessage:Lo/getTargetScrollPosition;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onTransact:Ljava/util/List;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    iput-object p8, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    iput-object p9, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    iput-object p10, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    iput-object p11, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->warmup:Ljava/util/List;

    iput-object p12, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    return-void
.end method


# virtual methods
.method public final copy(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/Cta;)Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;
    .locals 14
    .param p5    # Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "charges"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTargetScrollPosition;",
            "Lo/getTargetScrollPosition;",
            "Lo/getTargetScrollPosition;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;",
            "Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            ")",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;"
        }
    .end annotation

    new-instance v13, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;-><init>(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V

    return-object v13
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->extraCallback:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->extraCallback:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onNavigationEvent:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onNavigationEvent:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onPostMessage:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onPostMessage:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onTransact:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onTransact:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->warmup:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->warmup:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->extraCallback:Lo/getTargetScrollPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onTransact:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->warmup:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_b
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoanSummary(header="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", header_upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onNavigationEvent:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", header_lower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onPostMessage:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loan_details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", charges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loan_repayment_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onTransact:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loan_summary_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upcoming_emi_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overdue_emi_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inprogress_emi_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->warmup:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", floating_cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onNavigationEvent:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onPostMessage:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onTransact:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$LoanRepaymentData;

    invoke-interface {v2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    if-eqz p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    if-eqz p2, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/UpcomingEmiData;

    if-eqz p2, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->warmup:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p2, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
