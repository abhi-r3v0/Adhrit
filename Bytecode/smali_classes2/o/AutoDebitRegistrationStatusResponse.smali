.class public final Lo/AutoDebitRegistrationStatusResponse;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public final ICustomTabsCallback:Z

.field public final ICustomTabsCallback$Stub:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub$Proxy:I

.field public final ICustomTabsService:Ljava/lang/String;

.field public final ICustomTabsService$Stub:D

.field public final ICustomTabsService$Stub$Proxy:I

.field public final INotificationSideChannel:Ljava/lang/String;

.field public final IPostMessageService:Z

.field public final IPostMessageService$Stub:Z

.field public final asBinder:Z

.field public final asInterface:Z

.field public final cancel:Z

.field public final extraCallback:Z

.field public final extraCommand:I

.field public final getInterfaceDescriptor:I

.field public final mayLaunchUrl:I

.field public final newSession:I

.field public final notify:Ljava/lang/String;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:Z

.field public final onTransact:Z

.field public final postMessage:F

.field public final requestPostMessageChannel:I

.field public final updateVisuals:I

.field public final validateRelationship:I

.field public final warmup:Ljava/lang/String;


# direct methods
.method constructor <init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;ZLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->onMessageChannelReady:I

    move v1, p2

    iput-boolean v1, v0, Lo/AutoDebitRegistrationStatusResponse;->extraCallback:Z

    move v1, p3

    iput-boolean v1, v0, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback:Z

    move-object v1, p4

    iput-object v1, v0, Lo/AutoDebitRegistrationStatusResponse;->onNavigationEvent:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lo/AutoDebitRegistrationStatusResponse;->onPostMessage:Ljava/lang/String;

    move v1, p6

    iput-boolean v1, v0, Lo/AutoDebitRegistrationStatusResponse;->asInterface:Z

    move v1, p7

    iput-boolean v1, v0, Lo/AutoDebitRegistrationStatusResponse;->onTransact:Z

    move v1, p8

    iput-boolean v1, v0, Lo/AutoDebitRegistrationStatusResponse;->onRelationshipValidationResult:Z

    move v1, p9

    iput-boolean v1, v0, Lo/AutoDebitRegistrationStatusResponse;->asBinder:Z

    move-object v1, p10

    iput-object v1, v0, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsService:Ljava/lang/String;

    move/from16 v1, p13

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->getInterfaceDescriptor:I

    move/from16 v1, p14

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback$Stub$Proxy:I

    move/from16 v1, p15

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->newSession:I

    move/from16 v1, p16

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->extraCommand:I

    move/from16 v1, p17

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->updateVisuals:I

    move/from16 v1, p18

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->requestPostMessageChannel:I

    move/from16 v1, p19

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->postMessage:F

    move/from16 v1, p20

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->mayLaunchUrl:I

    move/from16 v1, p21

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->validateRelationship:I

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsService$Stub:D

    move/from16 v1, p24

    iput-boolean v1, v0, Lo/AutoDebitRegistrationStatusResponse;->IPostMessageService:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lo/AutoDebitRegistrationStatusResponse;->IPostMessageService$Stub:Z

    move/from16 v1, p26

    iput v1, v0, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsService$Stub$Proxy:I

    move-object/from16 v1, p27

    iput-object v1, v0, Lo/AutoDebitRegistrationStatusResponse;->INotificationSideChannel:Ljava/lang/String;

    move/from16 v1, p28

    iput-boolean v1, v0, Lo/AutoDebitRegistrationStatusResponse;->cancel:Z

    move-object v1, p12

    iput-object v1, v0, Lo/AutoDebitRegistrationStatusResponse;->warmup:Ljava/lang/String;

    move-object/from16 v1, p29

    iput-object v1, v0, Lo/AutoDebitRegistrationStatusResponse;->notify:Ljava/lang/String;

    return-void
.end method
