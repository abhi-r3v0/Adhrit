.class public final Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData$onNavigationEvent;
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
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00a5\u0001\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0012\u0012\u0010\u0008\u0001\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u0018J\u000b\u00100\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u00102\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0012H\u00c6\u0003J\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u000b\u00106\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010*J\u000b\u00108\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010;\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00c2\u0001\u0010>\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00122\u0010\u0008\u0003\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00122\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0002\u0010?J\t\u0010@\u001a\u00020\rH\u00d6\u0001J\u0013\u0010A\u001a\u00020B2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u00d6\u0003J\t\u0010E\u001a\u00020\rH\u00d6\u0001J\t\u0010F\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020\rH\u00d6\u0001R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u0015\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001aR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010+\u001a\u0004\u0008)\u0010*R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001aR\u0019\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001cR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001aR\u0015\u0010\u0017\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008/\u0010&\u00a8\u0006L"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;",
        "Landroid/os/Parcelable;",
        "errorMessage",
        "",
        "exitIntent",
        "Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
        "revisedAmount",
        "",
        "bgCol",
        "cta",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "header",
        "id",
        "",
        "identifier_name",
        "sub_title",
        "title",
        "collapsed",
        "",
        "tenureInformation",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;",
        "custom",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;",
        "version",
        "(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;Ljava/lang/Integer;)V",
        "getBgCol",
        "()Ljava/lang/String;",
        "getCollapsed",
        "()Ljava/util/List;",
        "getCta",
        "()Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "getCustom",
        "()Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;",
        "getErrorMessage",
        "getExitIntent",
        "()Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
        "getHeader",
        "getId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getIdentifier_name",
        "getRevisedAmount",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getSub_title",
        "getTenureInformation",
        "getTitle",
        "getVersion",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;Ljava/lang/Integer;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;",
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
.field public final ICustomTabsCallback:Ljava/lang/Double;

.field public final ICustomTabsCallback$Stub:Ljava/lang/String;

.field final ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

.field public final ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;",
            ">;"
        }
    .end annotation
.end field

.field final asBinder:Ljava/lang/String;

.field public final asInterface:Ljava/lang/String;

.field final extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

.field public final newSession:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

.field public final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

.field final onRelationshipValidationResult:Ljava/lang/String;

.field final onTransact:Ljava/lang/Integer;

.field public final warmup:Ljava/util/List;
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

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData$onNavigationEvent;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData$onNavigationEvent;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "error_message"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "exit_intent"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "revised_amount"
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "tenure_information"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/Double;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    iput-object p6, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asBinder:Ljava/lang/String;

    iput-object p7, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onTransact:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object p9, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asInterface:Ljava/lang/String;

    iput-object p10, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object p11, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->warmup:Ljava/util/List;

    iput-object p12, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsService:Ljava/util/List;

    iput-object p13, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    iput-object p14, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;Ljava/lang/Integer;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "error_message"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "exit_intent"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "revised_amount"
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "tenure_information"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;"
        }
    .end annotation

    new-instance v15, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;

    move-object v0, v15

    move-object/from16 v1, p1

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

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;Ljava/lang/Integer;)V

    return-object v15
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asBinder:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asBinder:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onTransact:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onTransact:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asInterface:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asInterface:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->warmup:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->warmup:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsService:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsService:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/Double;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asBinder:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onTransact:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asInterface:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->warmup:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsService:Ljava/util/List;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenData(errorMessage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exitIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", revisedAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bgCol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asBinder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onTransact:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sub_title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", collapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->warmup:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tenureInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsService:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", custom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/Double;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onTransact:Ljava/lang/Integer;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->warmup:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsService:Ljava/util/List;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    invoke-interface {v2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    if-eqz p2, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    if-eqz p2, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
