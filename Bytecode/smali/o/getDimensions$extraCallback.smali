.class public final Lo/getDimensions$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDimensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Z

.field public final ICustomTabsCallback$Stub:I

.field public final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getDimensions$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final asInterface:I

.field public final extraCallback:Z

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:J

.field public final onPostMessage:Z

.field public final onRelationshipValidationResult:Z

.field public final onTransact:J

.field public final warmup:I


# direct methods
.method private constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Lo/getDimensions$ICustomTabsCallback;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Lo/getDimensions$extraCallback;->onMessageChannelReady:J

    .line 93
    iput-boolean p3, p0, Lo/getDimensions$extraCallback;->ICustomTabsCallback:Z

    .line 94
    iput-boolean p4, p0, Lo/getDimensions$extraCallback;->extraCallback:Z

    .line 95
    iput-boolean p5, p0, Lo/getDimensions$extraCallback;->onPostMessage:Z

    .line 96
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/getDimensions$extraCallback;->asBinder:Ljava/util/List;

    .line 97
    iput-wide p7, p0, Lo/getDimensions$extraCallback;->onNavigationEvent:J

    .line 98
    iput-boolean p9, p0, Lo/getDimensions$extraCallback;->onRelationshipValidationResult:Z

    .line 99
    iput-wide p10, p0, Lo/getDimensions$extraCallback;->onTransact:J

    .line 100
    iput p12, p0, Lo/getDimensions$extraCallback;->ICustomTabsCallback$Stub:I

    .line 101
    iput p13, p0, Lo/getDimensions$extraCallback;->asInterface:I

    .line 102
    iput p14, p0, Lo/getDimensions$extraCallback;->warmup:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getDimensions$extraCallback;->onMessageChannelReady:J

    .line 107
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
    iput-boolean v0, p0, Lo/getDimensions$extraCallback;->ICustomTabsCallback:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lo/getDimensions$extraCallback;->extraCallback:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lo/getDimensions$extraCallback;->onPostMessage:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_3

    .line 113
    invoke-static {p1}, Lo/getDimensions$ICustomTabsCallback;->extraCallback(Landroid/os/Parcel;)Lo/getDimensions$ICustomTabsCallback;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 115
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/getDimensions$extraCallback;->asBinder:Ljava/util/List;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lo/getDimensions$extraCallback;->onNavigationEvent:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lo/getDimensions$extraCallback;->onRelationshipValidationResult:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getDimensions$extraCallback;->onTransact:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getDimensions$extraCallback;->ICustomTabsCallback$Stub:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getDimensions$extraCallback;->asInterface:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/getDimensions$extraCallback;->warmup:I

    return-void
.end method

.method private ICustomTabsCallback(Landroid/os/Parcel;)V
    .locals 3

    .line 170
    iget-wide v0, p0, Lo/getDimensions$extraCallback;->onMessageChannelReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    iget-boolean v0, p0, Lo/getDimensions$extraCallback;->ICustomTabsCallback:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget-boolean v0, p0, Lo/getDimensions$extraCallback;->extraCallback:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    iget-boolean v0, p0, Lo/getDimensions$extraCallback;->onPostMessage:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 174
    iget-object v0, p0, Lo/getDimensions$extraCallback;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    iget-object v2, p0, Lo/getDimensions$extraCallback;->asBinder:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getDimensions$ICustomTabsCallback;

    invoke-static {v2, p1}, Lo/getDimensions$ICustomTabsCallback;->onNavigationEvent(Lo/getDimensions$ICustomTabsCallback;Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-wide v0, p0, Lo/getDimensions$extraCallback;->onNavigationEvent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget-boolean v0, p0, Lo/getDimensions$extraCallback;->onRelationshipValidationResult:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    iget-wide v0, p0, Lo/getDimensions$extraCallback;->onTransact:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget v0, p0, Lo/getDimensions$extraCallback;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lo/getDimensions$extraCallback;->asInterface:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Lo/getDimensions$extraCallback;->warmup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private static extraCallback(Lo/DreamAppGlideModule;)Lo/getDimensions$extraCallback;
    .locals 21

    .line 125
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v1

    .line 127
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 131
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_9

    .line 138
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v8

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x20

    and-int/2addr v8, v11

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 143
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v12

    goto :goto_4

    :cond_4
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    if-nez v10, :cond_6

    .line 146
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 147
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v0, :cond_5

    .line 149
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v3

    .line 150
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v6

    .line 151
    new-instance v4, Lo/getDimensions$ICustomTabsCallback;

    const/4 v11, 0x0

    invoke-direct {v4, v3, v6, v7, v11}, Lo/getDimensions$ICustomTabsCallback;-><init>(IJLo/getDimensions$1;)V

    invoke-virtual {v14, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x20

    goto :goto_5

    :cond_5
    move-object v0, v14

    :cond_6
    if-eqz v8, :cond_8

    .line 155
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v6, 0x80

    and-long/2addr v6, v3

    const-wide/16 v14, 0x0

    cmp-long v8, v6, v14

    if-eqz v8, :cond_7

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    const-wide/16 v6, 0x1

    and-long/2addr v3, v6

    const/16 v6, 0x20

    shl-long/2addr v3, v6

    .line 157
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v6

    or-long/2addr v3, v6

    const-wide/16 v6, 0x3e8

    mul-long v3, v3, v6

    const-wide/16 v6, 0x5a

    .line 158
    div-long v6, v3, v6

    move/from16 v4, v16

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 160
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v3

    .line 161
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v8

    .line 162
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v11

    move/from16 v17, v10

    move v14, v11

    move-wide v10, v6

    move-object v6, v0

    move-wide/from16 v18, v12

    move v12, v3

    move v13, v8

    move-wide/from16 v7, v18

    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    goto :goto_8

    :cond_9
    move-object v6, v0

    const/4 v4, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    .line 164
    :goto_8
    new-instance v15, Lo/getDimensions$extraCallback;

    move-object v0, v15

    move v3, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v14}, Lo/getDimensions$extraCallback;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v15
.end method

.method private static onNavigationEvent(Landroid/os/Parcel;)Lo/getDimensions$extraCallback;
    .locals 1

    .line 188
    new-instance v0, Lo/getDimensions$extraCallback;

    invoke-direct {v0, p0}, Lo/getDimensions$extraCallback;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/DreamAppGlideModule;)Lo/getDimensions$extraCallback;
    .locals 0

    .line 34
    invoke-static {p0}, Lo/getDimensions$extraCallback;->extraCallback(Lo/DreamAppGlideModule;)Lo/getDimensions$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/getDimensions$extraCallback;Landroid/os/Parcel;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/getDimensions$extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic onPostMessage(Landroid/os/Parcel;)Lo/getDimensions$extraCallback;
    .locals 0

    .line 34
    invoke-static {p0}, Lo/getDimensions$extraCallback;->onNavigationEvent(Landroid/os/Parcel;)Lo/getDimensions$extraCallback;

    move-result-object p0

    return-object p0
.end method
