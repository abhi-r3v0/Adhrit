.class public final Lo/MediaSessionCompatApi24$Callback;
.super Landroidx/versionedparcelable/VersionedParcel;
.source ""


# instance fields
.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private asBinder:I

.field private final asInterface:I

.field private final extraCallback:Landroid/os/Parcel;

.field private final onNavigationEvent:Landroid/util/SparseIntArray;

.field private final onRelationshipValidationResult:I

.field private onTransact:I

.field private warmup:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    new-instance v5, Lo/postOrRun;

    invoke-direct {v5}, Lo/postOrRun;-><init>()V

    new-instance v6, Lo/postOrRun;

    invoke-direct {v6}, Lo/postOrRun;-><init>()V

    new-instance v7, Lo/postOrRun;

    invoke-direct {v7}, Lo/postOrRun;-><init>()V

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lo/MediaSessionCompatApi24$Callback;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lo/postOrRun;Lo/postOrRun;Lo/postOrRun;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Lo/postOrRun;Lo/postOrRun;Lo/postOrRun;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p5, p6, p7}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Lo/postOrRun;Lo/postOrRun;Lo/postOrRun;)V

    .line 41
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Lo/MediaSessionCompatApi24$Callback;->onNavigationEvent:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    .line 46
    iput p5, p0, Lo/MediaSessionCompatApi24$Callback;->asBinder:I

    const/4 p6, 0x0

    .line 47
    iput p6, p0, Lo/MediaSessionCompatApi24$Callback;->onTransact:I

    .line 48
    iput p5, p0, Lo/MediaSessionCompatApi24$Callback;->warmup:I

    .line 61
    iput-object p1, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    .line 62
    iput p2, p0, Lo/MediaSessionCompatApi24$Callback;->onRelationshipValidationResult:I

    .line 63
    iput p3, p0, Lo/MediaSessionCompatApi24$Callback;->asInterface:I

    .line 64
    iput p2, p0, Lo/MediaSessionCompatApi24$Callback;->onTransact:I

    .line 65
    iput-object p4, p0, Lo/MediaSessionCompatApi24$Callback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 206
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback(Landroid/os/Parcelable;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public final ICustomTabsCallback(I)Z
    .locals 4

    .line 70
    :goto_0
    iget v0, p0, Lo/MediaSessionCompatApi24$Callback;->onTransact:I

    iget v1, p0, Lo/MediaSessionCompatApi24$Callback;->asInterface:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    .line 71
    iget v0, p0, Lo/MediaSessionCompatApi24$Callback;->warmup:I

    if-ne v0, p1, :cond_0

    return v2

    .line 74
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    return v3

    .line 77
    :cond_1
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    iget v1, p0, Lo/MediaSessionCompatApi24$Callback;->onTransact:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    iget-object v1, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lo/MediaSessionCompatApi24$Callback;->warmup:I

    .line 82
    iget v1, p0, Lo/MediaSessionCompatApi24$Callback;->onTransact:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/MediaSessionCompatApi24$Callback;->onTransact:I

    goto :goto_0

    .line 84
    :cond_2
    iget v0, p0, Lo/MediaSessionCompatApi24$Callback;->warmup:I

    if-ne v0, p1, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method public final asBinder()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Landroidx/versionedparcelable/VersionedParcel;
    .locals 9

    .line 119
    new-instance v8, Lo/MediaSessionCompatApi24$Callback;

    iget-object v1, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v0, p0, Lo/MediaSessionCompatApi24$Callback;->onTransact:I

    iget v3, p0, Lo/MediaSessionCompatApi24$Callback;->onRelationshipValidationResult:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lo/MediaSessionCompatApi24$Callback;->asInterface:I

    :cond_0
    move v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lo/MediaSessionCompatApi24$Callback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcel;->onPostMessage:Lo/postOrRun;

    iget-object v6, p0, Landroidx/versionedparcelable/VersionedParcel;->ICustomTabsCallback:Lo/postOrRun;

    iget-object v7, p0, Landroidx/versionedparcelable/VersionedParcel;->onMessageChannelReady:Lo/postOrRun;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/MediaSessionCompatApi24$Callback;-><init>(Landroid/os/Parcel;IILjava/lang/String;Lo/postOrRun;Lo/postOrRun;Lo/postOrRun;)V

    return-object v8
.end method

.method public final extraCallback(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lo/MediaSessionCompatApi24$Callback;->onNavigationEvent()V

    .line 90
    iput p1, p0, Lo/MediaSessionCompatApi24$Callback;->asBinder:I

    .line 91
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->onNavigationEvent:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1146
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 4

    .line 99
    iget v0, p0, Lo/MediaSessionCompatApi24$Callback;->asBinder:I

    if-ltz v0, :cond_0

    .line 100
    iget-object v1, p0, Lo/MediaSessionCompatApi24$Callback;->onNavigationEvent:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    .line 107
    iget-object v3, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onPostMessage([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    .line 130
    :cond_0
    iget-object p1, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final onPostMessage()[B
    .locals 2

    .line 236
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_0
    new-array v0, v0, [B

    .line 241
    iget-object v1, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method public final onRelationshipValidationResult()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact()Ljava/lang/CharSequence;
    .locals 2

    .line 201
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, p0, Lo/MediaSessionCompatApi24$Callback;->extraCallback:Landroid/os/Parcel;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
