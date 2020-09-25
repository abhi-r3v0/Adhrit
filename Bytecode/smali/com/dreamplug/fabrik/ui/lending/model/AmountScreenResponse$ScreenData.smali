.class public final Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;,
        Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;,
        Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;
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
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008D\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0003defB\u008f\u0002\u0008\u0007\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0010\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\r\u0012\u0010\u0008\u0001\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u0010\u0012\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010#\u00a2\u0006\u0002\u0010$J\u0010\u0010G\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010BJ\u000b\u0010H\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0011\u0010L\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0010H\u00c6\u0003J\u0010\u0010M\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u00104J\u0010\u0010N\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u000b\u0010O\u001a\u0004\u0018\u00010\u001bH\u00c6\u0003J\u0010\u0010P\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u0010\u0010Q\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u000b\u0010R\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010S\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u0011\u0010T\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u0010H\u00c6\u0003J\u0011\u0010U\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010#H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010Y\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u00104J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010[\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0011\u0010]\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u00c6\u0003J\u00ba\u0002\u0010^\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00102\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\r2\n\u0008\u0003\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\r2\u0010\u0008\u0003\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00102\u0010\u0008\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00102\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u00c6\u0001\u00a2\u0006\u0002\u0010_J\u0013\u0010`\u001a\u00020\u00032\u0008\u0010a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010b\u001a\u00020\nH\u00d6\u0001J\t\u0010c\u001a\u00020\u0005H\u00d6\u0001R\u0019\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0013\u0010\"\u001a\u0004\u0018\u00010#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0019\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010&R\u0015\u0010\u001d\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010,\u001a\u0004\u0008*\u0010+R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0019\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010&R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010.R\u0015\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u00105\u001a\u0004\u00083\u00104R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010.R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010,\u001a\u0004\u00089\u0010+R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010.R\u0015\u0010\u001c\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010,\u001a\u0004\u0008;\u0010+R\u0015\u0010\u0019\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010,\u001a\u0004\u0008<\u0010+R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010.R\u0015\u0010\u001e\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010,\u001a\u0004\u0008>\u0010+R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010.R\u0019\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010&R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010C\u001a\u0004\u0008A\u0010BR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010.R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010.R\u0015\u0010\u0018\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u00105\u001a\u0004\u0008F\u00104\u00a8\u0006g"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;",
        "",
        "showKyc",
        "",
        "errorMessage",
        "",
        "exitIntent",
        "Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
        "header",
        "id",
        "",
        "loc_instrument_id",
        "interest_rate",
        "",
        "identifier_name",
        "experiments",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/Experiments;",
        "next_screen",
        "previous_screen",
        "sub_title",
        "title",
        "bottom_cta",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "version",
        "min_limit",
        "interestInfo",
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;",
        "max_limit",
        "default_value",
        "no_of_breaks_in_amount",
        "progressiveDial",
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;",
        "collapsed",
        "center",
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;",
        "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;)V",
        "getBottom_cta",
        "()Ljava/util/List;",
        "getCenter",
        "()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;",
        "getCollapsed",
        "getDefault_value",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getErrorMessage",
        "()Ljava/lang/String;",
        "getExitIntent",
        "()Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
        "getExperiments",
        "getHeader",
        "getId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getIdentifier_name",
        "getInterestInfo",
        "()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;",
        "getInterest_rate",
        "getLoc_instrument_id",
        "getMax_limit",
        "getMin_limit",
        "getNext_screen",
        "getNo_of_breaks_in_amount",
        "getPrevious_screen",
        "getProgressiveDial",
        "getShowKyc",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getSub_title",
        "getTitle",
        "getVersion",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Center",
        "InterestInfo",
        "Steps",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field private final bottom_cta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            ">;"
        }
    .end annotation
.end field

.field private final center:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

.field private final collapsed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final default_value:Ljava/lang/Double;

.field private final errorMessage:Ljava/lang/String;

.field private final exitIntent:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

.field private final experiments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Experiments;",
            ">;"
        }
    .end annotation
.end field

.field private final header:Ljava/lang/String;

.field private final id:Ljava/lang/Integer;

.field private final identifier_name:Ljava/lang/String;

.field private final interestInfo:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

.field private final interest_rate:Ljava/lang/Double;

.field private final loc_instrument_id:Ljava/lang/String;

.field private final max_limit:Ljava/lang/Double;

.field private final min_limit:Ljava/lang/Double;

.field private final next_screen:Ljava/lang/String;

.field private final no_of_breaks_in_amount:Ljava/lang/Double;

.field private final previous_screen:Ljava/lang/String;

.field private final progressiveDial:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;",
            ">;"
        }
    .end annotation
.end field

.field private final showKyc:Ljava/lang/Boolean;

.field private final sub_title:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_kyc"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "error_message"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "exit_intent"
        .end annotation
    .end param
    .param p17    # Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "interest_info"
        .end annotation
    .end param
    .param p21    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "progressive_dial"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Experiments;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->showKyc:Ljava/lang/Boolean;

    move-object v1, p2

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->errorMessage:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->exitIntent:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    move-object v1, p4

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->header:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->id:Ljava/lang/Integer;

    move-object v1, p6

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->loc_instrument_id:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interest_rate:Ljava/lang/Double;

    move-object v1, p8

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->identifier_name:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->experiments:Ljava/util/List;

    move-object v1, p10

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->next_screen:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->previous_screen:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->sub_title:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->title:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->bottom_cta:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->version:Ljava/lang/Integer;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->min_limit:Ljava/lang/Double;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interestInfo:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->max_limit:Ljava/lang/Double;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->default_value:Ljava/lang/Double;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->no_of_breaks_in_amount:Ljava/lang/Double;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->progressiveDial:Ljava/util/List;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->collapsed:Ljava/util/List;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->center:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p24

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->showKyc:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->errorMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->exitIntent:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->header:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->id:Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->loc_instrument_id:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interest_rate:Ljava/lang/Double;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->identifier_name:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->experiments:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->next_screen:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->previous_screen:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->sub_title:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->title:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->bottom_cta:Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->version:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->min_limit:Ljava/lang/Double;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interestInfo:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->max_limit:Ljava/lang/Double;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->default_value:Ljava/lang/Double;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->no_of_breaks_in_amount:Ljava/lang/Double;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->progressiveDial:Ljava/util/List;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->collapsed:Ljava/util/List;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v1, v1, v16

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->center:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p22, v15

    move-object/from16 p23, v1

    invoke-virtual/range {p0 .. p23}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->copy(Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->showKyc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->next_screen:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->previous_screen:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->bottom_cta:Ljava/util/List;

    return-object v0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component16()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->min_limit:Ljava/lang/Double;

    return-object v0
.end method

.method public final component17()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interestInfo:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    return-object v0
.end method

.method public final component18()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->max_limit:Ljava/lang/Double;

    return-object v0
.end method

.method public final component19()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->default_value:Ljava/lang/Double;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->no_of_breaks_in_amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final component21()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->progressiveDial:Ljava/util/List;

    return-object v0
.end method

.method public final component22()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->collapsed:Ljava/util/List;

    return-object v0
.end method

.method public final component23()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->center:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    return-object v0
.end method

.method public final component3()Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->exitIntent:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->header:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->loc_instrument_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interest_rate:Ljava/lang/Double;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->identifier_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Experiments;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->experiments:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;
    .locals 25
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_kyc"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "error_message"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "exit_intent"
        .end annotation
    .end param
    .param p17    # Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "interest_info"
        .end annotation
    .end param
    .param p21    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "progressive_dial"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Experiments;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;",
            ")",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;"
        }
    .end annotation

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

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    new-instance v24, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    move-object/from16 v0, v24

    invoke-direct/range {v0 .. v23}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;)V

    return-object v24
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->showKyc:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->showKyc:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->errorMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->exitIntent:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->exitIntent:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->header:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->header:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->id:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->loc_instrument_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->loc_instrument_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interest_rate:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interest_rate:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->identifier_name:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->identifier_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->experiments:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->experiments:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->next_screen:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->next_screen:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->previous_screen:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->previous_screen:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->sub_title:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->sub_title:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->bottom_cta:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->bottom_cta:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->version:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->version:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->min_limit:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->min_limit:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interestInfo:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interestInfo:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->max_limit:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->max_limit:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->default_value:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->default_value:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->no_of_breaks_in_amount:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->no_of_breaks_in_amount:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->progressiveDial:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->progressiveDial:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->collapsed:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->collapsed:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->center:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->center:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

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

.method public final getBottom_cta()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->bottom_cta:Ljava/util/List;

    return-object v0
.end method

.method public final getCenter()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->center:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    return-object v0
.end method

.method public final getCollapsed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->collapsed:Ljava/util/List;

    return-object v0
.end method

.method public final getDefault_value()Ljava/lang/Double;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->default_value:Ljava/lang/Double;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getExitIntent()Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->exitIntent:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    return-object v0
.end method

.method public final getExperiments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Experiments;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->experiments:Ljava/util/List;

    return-object v0
.end method

.method public final getHeader()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->header:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIdentifier_name()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->identifier_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterestInfo()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interestInfo:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    return-object v0
.end method

.method public final getInterest_rate()Ljava/lang/Double;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interest_rate:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLoc_instrument_id()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->loc_instrument_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMax_limit()Ljava/lang/Double;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->max_limit:Ljava/lang/Double;

    return-object v0
.end method

.method public final getMin_limit()Ljava/lang/Double;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->min_limit:Ljava/lang/Double;

    return-object v0
.end method

.method public final getNext_screen()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->next_screen:Ljava/lang/String;

    return-object v0
.end method

.method public final getNo_of_breaks_in_amount()Ljava/lang/Double;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->no_of_breaks_in_amount:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPrevious_screen()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->previous_screen:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgressiveDial()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Steps;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->progressiveDial:Ljava/util/List;

    return-object v0
.end method

.method public final getShowKyc()Ljava/lang/Boolean;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->showKyc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSub_title()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->showKyc:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->errorMessage:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->exitIntent:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->header:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->id:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->loc_instrument_id:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interest_rate:Ljava/lang/Double;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->identifier_name:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->experiments:Ljava/util/List;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->next_screen:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->previous_screen:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->sub_title:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->title:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->bottom_cta:Ljava/util/List;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->version:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->min_limit:Ljava/lang/Double;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interestInfo:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->max_limit:Ljava/lang/Double;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->default_value:Ljava/lang/Double;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->no_of_breaks_in_amount:Ljava/lang/Double;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->progressiveDial:Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->collapsed:Ljava/util/List;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->center:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_16
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenData(showKyc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->showKyc:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exitIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->exitIntent:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loc_instrument_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->loc_instrument_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", interest_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interest_rate:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->identifier_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", experiments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->experiments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", next_screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->next_screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previous_screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->previous_screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sub_title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bottom_cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->bottom_cta:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->version:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->min_limit:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interestInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->interestInfo:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", max_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->max_limit:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", default_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->default_value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", no_of_breaks_in_amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->no_of_breaks_in_amount:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progressiveDial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->progressiveDial:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->collapsed:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->center:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
