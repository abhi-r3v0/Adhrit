.class public final Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay$onNavigationEvent;
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
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008*\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0019J\u000b\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u0010\u00106\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\'J\u000b\u00107\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u009e\u0001\u0010>\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010?J\t\u0010@\u001a\u00020\u0005H\u00d6\u0001J\u0013\u0010A\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u00d6\u0003J\t\u0010E\u001a\u00020\u0005H\u00d6\u0001J\t\u0010F\u001a\u00020\u0007H\u00d6\u0001J\u0019\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010(\u001a\u0004\u0008&\u0010\'R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0015\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010(\u001a\u0004\u00081\u0010\'\u00a8\u0006L"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;",
        "Landroid/os/Parcelable;",
        "footer",
        "Lcom/dreamplug/fabrik/ui/lending/model/Footer;",
        "id",
        "",
        "identifier_name",
        "",
        "floatingCta",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "details",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;",
        "loan_summary_data",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;",
        "loan_summary",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;",
        "loan_details",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;",
        "header",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "charges",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;",
        "version",
        "(Lcom/dreamplug/fabrik/ui/lending/model/Footer;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;Ljava/lang/Integer;)V",
        "getCharges",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;",
        "getDetails",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;",
        "getFloatingCta",
        "()Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "getFooter",
        "()Lcom/dreamplug/fabrik/ui/lending/model/Footer;",
        "getHeader",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getIdentifier_name",
        "()Ljava/lang/String;",
        "getLoan_details",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;",
        "getLoan_summary",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;",
        "getLoan_summary_data",
        "()Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;",
        "getVersion",
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
        "(Lcom/dreamplug/fabrik/ui/lending/model/Footer;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;Ljava/lang/Integer;)Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;",
        "describeContents",
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
.field final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

.field public final asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

.field public final asInterface:Lo/getTargetScrollPosition;

.field public final extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Footer;

.field public final getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;

.field final newSession:Ljava/lang/Integer;

.field public final onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

.field final onNavigationEvent:Ljava/lang/Integer;

.field public final onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

.field public final onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

.field public final onTransact:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay$onNavigationEvent;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay$onNavigationEvent;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lending/model/Footer;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;Ljava/lang/Integer;)V
    .locals 0
    .param p4    # Lcom/dreamplug/fabrik/ui/lending/model/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "floating_cta"
        .end annotation
    .end param
    .param p10    # Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "charges"
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Footer;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onNavigationEvent:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    iput-object p8, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    iput-object p9, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asInterface:Lo/getTargetScrollPosition;

    iput-object p10, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    iput-object p11, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;

    iput-object p12, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->newSession:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/dreamplug/fabrik/ui/lending/model/Footer;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;Ljava/lang/Integer;)Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;
    .locals 14
    .param p4    # Lcom/dreamplug/fabrik/ui/lending/model/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "floating_cta"
        .end annotation
    .end param
    .param p10    # Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "charges"
        .end annotation
    .end param

    new-instance v13, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

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

    invoke-direct/range {v0 .. v12}, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Footer;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;Ljava/lang/Integer;)V

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

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Footer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Footer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onNavigationEvent:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onNavigationEvent:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asInterface:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asInterface:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->newSession:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->newSession:Ljava/lang/Integer;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Footer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asInterface:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->newSession:Ljava/lang/Integer;

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

    const-string v1, "ScreenDataPay(footer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Footer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onNavigationEvent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", floatingCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loan_summary_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loan_summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loan_details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asInterface:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", charges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->newSession:Ljava/lang/Integer;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Footer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->asInterface:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Charges;

    if-eqz p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lending/model/NoteDetails;

    if-eqz p2, :cond_8

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenDataPay;->newSession:Ljava/lang/Integer;

    if-eqz p2, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
