.class public final Lcom/google/android/gms/common/stats/WakeLockEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/stats/WakeLockEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:I

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private ICustomTabsService:I

.field private final asBinder:Ljava/lang/String;

.field private final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/String;

.field private final getInterfaceDescriptor:J

.field private final newSession:Z

.field private final onMessageChannelReady:I

.field private onNavigationEvent:I

.field private final onPostMessage:J

.field private final onRelationshipValidationResult:J

.field private final onTransact:Ljava/lang/String;

.field private postMessage:J

.field private final warmup:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lo/getIosCardAspectRatio;

    invoke-direct {v0}, Lo/getIosCardAspectRatio;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onMessageChannelReady:I

    move-wide v1, p2

    .line 3
    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onPostMessage:J

    move v1, p4

    .line 4
    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onNavigationEvent:I

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->extraCallback:Ljava/lang/String;

    move-object v1, p12

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->asBinder:Ljava/lang/String;

    move v1, p6

    .line 8
    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsCallback$Stub:I

    const-wide/16 v1, -0x1

    .line 9
    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->postMessage:J

    move-object v1, p7

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->asInterface:Ljava/util/List;

    move-object v1, p8

    .line 11
    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onTransact:Ljava/lang/String;

    move-wide v1, p9

    .line 12
    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onRelationshipValidationResult:J

    move v1, p11

    .line 13
    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsService:I

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->warmup:F

    move-wide/from16 v1, p15

    .line 16
    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->getInterfaceDescriptor:J

    move/from16 v1, p18

    .line 17
    iput-boolean v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->newSession:Z

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    const/4 v1, 0x2

    const/16 v18, 0x0

    .line 19
    invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 11

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->extraCallback:Ljava/lang/String;

    .line 80
    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsCallback$Stub:I

    .line 83
    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->asInterface:Ljava/util/List;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    const-string v4, ","

    .line 88
    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_0
    iget v4, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsService:I

    .line 92
    iget-object v5, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v5, v3

    .line 97
    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-nez v6, :cond_2

    move-object v6, v3

    .line 101
    :cond_2
    iget v7, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->warmup:F

    .line 104
    iget-object v8, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->asBinder:Ljava/lang/String;

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v8

    .line 107
    :goto_1
    iget-boolean v8, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->newSession:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "\t"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->postMessage:J

    return-wide v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onNavigationEvent:I

    return v0
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onPostMessage:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 26
    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onMessageChannelReady:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 2039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->onNavigationEvent()J

    move-result-wide v3

    const/16 v1, 0x8

    const/4 v5, 0x2

    .line 2049
    invoke-static {p1, v5, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2050
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->extraCallback:Ljava/lang/String;

    .line 33
    invoke-static {p1, v2, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 35
    iget v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsCallback$Stub:I

    const/4 v4, 0x5

    .line 3039
    invoke-static {p1, v4, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3040
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->asInterface:Ljava/util/List;

    const/4 v4, 0x6

    .line 40
    invoke-static {p1, v4, v3, p2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 42
    iget-wide v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onRelationshipValidationResult:J

    .line 3049
    invoke-static {p1, v1, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3050
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsCallback:Ljava/lang/String;

    const/16 v4, 0xa

    .line 47
    invoke-static {p1, v4, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->onMessageChannelReady()I

    move-result v3

    const/16 v4, 0xb

    .line 4039
    invoke-static {p1, v4, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4040
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->onTransact:Ljava/lang/String;

    const/16 v4, 0xc

    .line 54
    invoke-static {p1, v4, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 56
    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    const/16 v4, 0xd

    .line 58
    invoke-static {p1, v4, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 60
    iget v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->ICustomTabsService:I

    const/16 v4, 0xe

    .line 5039
    invoke-static {p1, v4, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5040
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->warmup:F

    const/16 v4, 0xf

    .line 5067
    invoke-static {p1, v4, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5068
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 66
    iget-wide v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->getInterfaceDescriptor:J

    const/16 v5, 0x10

    .line 6049
    invoke-static {p1, v5, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 6050
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->asBinder:Ljava/lang/String;

    const/16 v3, 0x11

    .line 71
    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 73
    iget-boolean p2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->newSession:Z

    const/16 v1, 0x12

    .line 7020
    invoke-static {p1, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 7021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 9013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
