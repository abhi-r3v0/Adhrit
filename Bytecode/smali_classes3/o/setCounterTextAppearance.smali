.class public final Lo/setCounterTextAppearance;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setCounterTextAppearance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:Z

.field public final ICustomTabsCallback$Stub$Proxy:I

.field public final ICustomTabsService:Z

.field public final ICustomTabsService$Stub:Ljava/lang/String;

.field public final IPostMessageService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final asBinder:J

.field public final asInterface:J

.field public final extraCallback:J

.field public final extraCommand:Z

.field public final getInterfaceDescriptor:J

.field public final mayLaunchUrl:Z

.field public final newSession:J

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:Z

.field public final onTransact:Ljava/lang/String;

.field public final postMessage:Ljava/lang/Boolean;

.field public final requestPostMessageChannel:Ljava/lang/String;

.field public final updateVisuals:J

.field public final validateRelationship:Ljava/lang/String;

.field public final warmup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lo/setCounterEnabled;

    invoke-direct {v0}, Lo/setCounterEnabled;-><init>()V

    sput-object v0, Lo/setCounterTextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "JJIZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    move-wide v1, p4

    .line 6
    iput-wide v1, v0, Lo/setCounterTextAppearance;->asInterface:J

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    move-wide v1, p7

    .line 8
    iput-wide v1, v0, Lo/setCounterTextAppearance;->extraCallback:J

    move-wide v1, p9

    .line 9
    iput-wide v1, v0, Lo/setCounterTextAppearance;->asBinder:J

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lo/setCounterTextAppearance;->onTransact:Ljava/lang/String;

    move v1, p12

    .line 11
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    move/from16 v1, p13

    .line 12
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->onRelationshipValidationResult:Z

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lo/setCounterTextAppearance;->warmup:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 14
    iput-wide v1, v0, Lo/setCounterTextAppearance;->getInterfaceDescriptor:J

    move-wide/from16 v1, p17

    .line 15
    iput-wide v1, v0, Lo/setCounterTextAppearance;->newSession:J

    move/from16 v1, p19

    .line 16
    iput v1, v0, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub$Proxy:I

    move/from16 v1, p20

    .line 17
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->ICustomTabsService:Z

    move/from16 v1, p21

    .line 18
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->mayLaunchUrl:Z

    move/from16 v1, p22

    .line 19
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->extraCommand:Z

    move-object/from16 v1, p23

    .line 20
    iput-object v1, v0, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 21
    iput-object v1, v0, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    move-wide/from16 v1, p25

    .line 22
    iput-wide v1, v0, Lo/setCounterTextAppearance;->updateVisuals:J

    move-object/from16 v1, p27

    .line 23
    iput-object v1, v0, Lo/setCounterTextAppearance;->IPostMessageService:Ljava/util/List;

    move-object/from16 v1, p28

    .line 24
    iput-object v1, v0, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 25
    iput-object v1, v0, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZJ",
            "Ljava/lang/String;",
            "JJIZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 27
    invoke-direct {p0}, Lo/getTags;-><init>()V

    move-object v1, p1

    .line 28
    iput-object v1, v0, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    move-object v1, p2

    .line 29
    iput-object v1, v0, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    move-object v1, p3

    .line 30
    iput-object v1, v0, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    move-wide v1, p12

    .line 31
    iput-wide v1, v0, Lo/setCounterTextAppearance;->asInterface:J

    move-object v1, p4

    .line 32
    iput-object v1, v0, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    move-wide v1, p5

    .line 33
    iput-wide v1, v0, Lo/setCounterTextAppearance;->extraCallback:J

    move-wide v1, p7

    .line 34
    iput-wide v1, v0, Lo/setCounterTextAppearance;->asBinder:J

    move-object v1, p9

    .line 35
    iput-object v1, v0, Lo/setCounterTextAppearance;->onTransact:Ljava/lang/String;

    move v1, p10

    .line 36
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    move v1, p11

    .line 37
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->onRelationshipValidationResult:Z

    move-object/from16 v1, p14

    .line 38
    iput-object v1, v0, Lo/setCounterTextAppearance;->warmup:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 39
    iput-wide v1, v0, Lo/setCounterTextAppearance;->getInterfaceDescriptor:J

    move-wide/from16 v1, p17

    .line 40
    iput-wide v1, v0, Lo/setCounterTextAppearance;->newSession:J

    move/from16 v1, p19

    .line 41
    iput v1, v0, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub$Proxy:I

    move/from16 v1, p20

    .line 42
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->ICustomTabsService:Z

    move/from16 v1, p21

    .line 43
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->mayLaunchUrl:Z

    move/from16 v1, p22

    .line 44
    iput-boolean v1, v0, Lo/setCounterTextAppearance;->extraCommand:Z

    move-object/from16 v1, p23

    .line 45
    iput-object v1, v0, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 46
    iput-object v1, v0, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    move-wide/from16 v1, p25

    .line 47
    iput-wide v1, v0, Lo/setCounterTextAppearance;->updateVisuals:J

    move-object/from16 v1, p27

    .line 48
    iput-object v1, v0, Lo/setCounterTextAppearance;->IPostMessageService:Ljava/util/List;

    move-object/from16 v1, p28

    .line 49
    iput-object v1, v0, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 50
    iput-object v1, v0, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 53
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 54
    iget-object v0, p0, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 55
    iget-object v0, p0, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 56
    iget-object v0, p0, Lo/setCounterTextAppearance;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 57
    iget-object v0, p0, Lo/setCounterTextAppearance;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 58
    iget-wide v2, p0, Lo/setCounterTextAppearance;->extraCallback:J

    const/4 v0, 0x6

    invoke-static {p1, v0, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 59
    iget-wide v2, p0, Lo/setCounterTextAppearance;->asBinder:J

    const/4 v0, 0x7

    invoke-static {p1, v0, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 60
    iget-object v0, p0, Lo/setCounterTextAppearance;->onTransact:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 61
    iget-boolean v0, p0, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub:Z

    const/16 v2, 0x9

    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 62
    iget-boolean v0, p0, Lo/setCounterTextAppearance;->onRelationshipValidationResult:Z

    const/16 v2, 0xa

    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 63
    iget-wide v2, p0, Lo/setCounterTextAppearance;->asInterface:J

    const/16 v0, 0xb

    invoke-static {p1, v0, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 64
    iget-object v0, p0, Lo/setCounterTextAppearance;->warmup:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 65
    iget-wide v2, p0, Lo/setCounterTextAppearance;->getInterfaceDescriptor:J

    const/16 v0, 0xd

    invoke-static {p1, v0, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 66
    iget-wide v2, p0, Lo/setCounterTextAppearance;->newSession:J

    const/16 v0, 0xe

    invoke-static {p1, v0, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 67
    iget v0, p0, Lo/setCounterTextAppearance;->ICustomTabsCallback$Stub$Proxy:I

    const/16 v2, 0xf

    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    .line 68
    iget-boolean v0, p0, Lo/setCounterTextAppearance;->ICustomTabsService:Z

    const/16 v2, 0x10

    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 69
    iget-boolean v0, p0, Lo/setCounterTextAppearance;->mayLaunchUrl:Z

    const/16 v2, 0x11

    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 70
    iget-boolean v0, p0, Lo/setCounterTextAppearance;->extraCommand:Z

    const/16 v2, 0x12

    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 71
    iget-object v0, p0, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    const/16 v2, 0x13

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lo/setCounterTextAppearance;->postMessage:Ljava/lang/Boolean;

    const/16 v2, 0x15

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 73
    iget-wide v2, p0, Lo/setCounterTextAppearance;->updateVisuals:J

    const/16 v0, 0x16

    invoke-static {p1, v0, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 74
    iget-object v0, p0, Lo/setCounterTextAppearance;->IPostMessageService:Ljava/util/List;

    const/16 v2, 0x17

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 75
    iget-object v0, p0, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    const/16 v2, 0x19

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 77
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
