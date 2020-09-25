.class public final Lo/adjustTargetDensityForError;
.super Lo/round;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/adjustTargetDensityForError$extraCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/adjustTargetDensityForError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Z

.field public final ICustomTabsCallback$Stub:J

.field public final ICustomTabsCallback$Stub$Proxy:I

.field public final ICustomTabsService:I

.field public final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/adjustTargetDensityForError$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final asInterface:Z

.field public final extraCallback:Z

.field public final getInterfaceDescriptor:I

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:Z

.field public final onPostMessage:Z

.field public final onRelationshipValidationResult:J

.field public final onTransact:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 239
    new-instance v0, Lo/adjustTargetDensityForError$5;

    invoke-direct {v0}, Lo/adjustTargetDensityForError$5;-><init>()V

    sput-object v0, Lo/adjustTargetDensityForError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List<",
            "Lo/adjustTargetDensityForError$extraCallback;",
            ">;ZJIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 98
    invoke-direct {p0}, Lo/round;-><init>()V

    move-wide v1, p1

    .line 99
    iput-wide v1, v0, Lo/adjustTargetDensityForError;->onMessageChannelReady:J

    move v1, p3

    .line 100
    iput-boolean v1, v0, Lo/adjustTargetDensityForError;->onNavigationEvent:Z

    move v1, p4

    .line 101
    iput-boolean v1, v0, Lo/adjustTargetDensityForError;->onPostMessage:Z

    move v1, p5

    .line 102
    iput-boolean v1, v0, Lo/adjustTargetDensityForError;->ICustomTabsCallback:Z

    move v1, p6

    .line 103
    iput-boolean v1, v0, Lo/adjustTargetDensityForError;->extraCallback:Z

    move-wide v1, p7

    .line 104
    iput-wide v1, v0, Lo/adjustTargetDensityForError;->onRelationshipValidationResult:J

    move-wide v1, p9

    .line 105
    iput-wide v1, v0, Lo/adjustTargetDensityForError;->onTransact:J

    .line 106
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/adjustTargetDensityForError;->asBinder:Ljava/util/List;

    move v1, p12

    .line 107
    iput-boolean v1, v0, Lo/adjustTargetDensityForError;->asInterface:Z

    move-wide/from16 v1, p13

    .line 108
    iput-wide v1, v0, Lo/adjustTargetDensityForError;->ICustomTabsCallback$Stub:J

    move/from16 v1, p15

    .line 109
    iput v1, v0, Lo/adjustTargetDensityForError;->ICustomTabsCallback$Stub$Proxy:I

    move/from16 v1, p16

    .line 110
    iput v1, v0, Lo/adjustTargetDensityForError;->getInterfaceDescriptor:I

    move/from16 v1, p17

    .line 111
    iput v1, v0, Lo/adjustTargetDensityForError;->ICustomTabsService:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 114
    invoke-direct {p0}, Lo/round;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/adjustTargetDensityForError;->onMessageChannelReady:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/adjustTargetDensityForError;->onNavigationEvent:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lo/adjustTargetDensityForError;->onPostMessage:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lo/adjustTargetDensityForError;->ICustomTabsCallback:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lo/adjustTargetDensityForError;->extraCallback:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lo/adjustTargetDensityForError;->onRelationshipValidationResult:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lo/adjustTargetDensityForError;->onTransact:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_4

    .line 125
    invoke-static {p1}, Lo/adjustTargetDensityForError$extraCallback;->onPostMessage(Landroid/os/Parcel;)Lo/adjustTargetDensityForError$extraCallback;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 127
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/adjustTargetDensityForError;->asBinder:Ljava/util/List;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lo/adjustTargetDensityForError;->asInterface:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/adjustTargetDensityForError;->ICustomTabsCallback$Stub:J

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/adjustTargetDensityForError;->ICustomTabsCallback$Stub$Proxy:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/adjustTargetDensityForError;->getInterfaceDescriptor:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/adjustTargetDensityForError;->ICustomTabsService:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lo/adjustTargetDensityForError$5;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/adjustTargetDensityForError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static ICustomTabsCallback(Lo/DreamAppGlideModule;JLo/getWaivers;)Lo/adjustTargetDensityForError;
    .locals 27

    move-object/from16 v0, p3

    .line 137
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v2

    .line 139
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 144
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-nez v6, :cond_b

    .line 151
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    and-int/lit8 v11, v9, 0x40

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    and-int/lit8 v12, v9, 0x20

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v11, :cond_5

    if-nez v9, :cond_5

    .line 157
    invoke-static/range {p0 .. p2}, Lo/isScaling;->ICustomTabsCallback(Lo/DreamAppGlideModule;J)J

    move-result-wide v13

    goto :goto_5

    :cond_5
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-nez v11, :cond_8

    .line 160
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v1

    .line 161
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_7

    .line 163
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v18

    if-nez v9, :cond_6

    .line 166
    invoke-static/range {p0 .. p2}, Lo/isScaling;->ICustomTabsCallback(Lo/DreamAppGlideModule;J)J

    move-result-wide v19

    move-wide/from16 v7, v19

    goto :goto_7

    :cond_6
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 168
    :goto_7
    new-instance v5, Lo/adjustTargetDensityForError$extraCallback;

    .line 169
    invoke-virtual {v0, v7, v8}, Lo/getWaivers;->extraCallback(J)J

    move-result-wide v21

    const/16 v23, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v19, v7

    invoke-direct/range {v17 .. v23}, Lo/adjustTargetDensityForError$extraCallback;-><init>(IJJLo/adjustTargetDensityForError$5;)V

    .line 168
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    move-object v1, v15

    :cond_8
    if-eqz v12, :cond_a

    .line 173
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v7, 0x80

    and-long/2addr v7, v4

    const-wide/16 v17, 0x0

    cmp-long v12, v7, v17

    if-eqz v12, :cond_9

    const/16 v16, 0x1

    goto :goto_8

    :cond_9
    const/16 v16, 0x0

    :goto_8
    const-wide/16 v7, 0x1

    and-long/2addr v4, v7

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    .line 175
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v7

    or-long/2addr v4, v7

    const-wide/16 v7, 0x3e8

    mul-long v4, v4, v7

    const-wide/16 v7, 0x5a

    .line 176
    div-long v7, v4, v7

    move/from16 v5, v16

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 178
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v4

    .line 179
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v12

    .line 180
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v15

    move/from16 v16, v4

    move/from16 v24, v11

    move/from16 v17, v12

    move/from16 v18, v15

    move-object v12, v1

    move-wide/from16 v25, v13

    move v13, v5

    move-wide v14, v7

    move v7, v9

    move v5, v10

    move-wide/from16 v8, v25

    goto :goto_a

    :cond_b
    move-object v12, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    .line 182
    :goto_a
    new-instance v19, Lo/adjustTargetDensityForError;

    move-object/from16 v1, v19

    .line 184
    invoke-virtual {v0, v8, v9}, Lo/getWaivers;->extraCallback(J)J

    move-result-wide v10

    move v4, v6

    move/from16 v6, v24

    invoke-direct/range {v1 .. v18}, Lo/adjustTargetDensityForError;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    return-object v19
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 220
    iget-wide v0, p0, Lo/adjustTargetDensityForError;->onMessageChannelReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 221
    iget-boolean p2, p0, Lo/adjustTargetDensityForError;->onNavigationEvent:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-boolean p2, p0, Lo/adjustTargetDensityForError;->onPostMessage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 223
    iget-boolean p2, p0, Lo/adjustTargetDensityForError;->ICustomTabsCallback:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 224
    iget-boolean p2, p0, Lo/adjustTargetDensityForError;->extraCallback:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget-wide v0, p0, Lo/adjustTargetDensityForError;->onRelationshipValidationResult:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    iget-wide v0, p0, Lo/adjustTargetDensityForError;->onTransact:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-object p2, p0, Lo/adjustTargetDensityForError;->asBinder:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 228
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 230
    iget-object v1, p0, Lo/adjustTargetDensityForError;->asBinder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/adjustTargetDensityForError$extraCallback;

    invoke-virtual {v1, p1}, Lo/adjustTargetDensityForError$extraCallback;->extraCallback(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget-boolean p2, p0, Lo/adjustTargetDensityForError;->asInterface:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 233
    iget-wide v0, p0, Lo/adjustTargetDensityForError;->ICustomTabsCallback$Stub:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget p2, p0, Lo/adjustTargetDensityForError;->ICustomTabsCallback$Stub$Proxy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget p2, p0, Lo/adjustTargetDensityForError;->getInterfaceDescriptor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget p2, p0, Lo/adjustTargetDensityForError;->ICustomTabsService:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
