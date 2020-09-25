.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lo/getTags;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$zaa;,
        Lcom/google/android/gms/common/data/DataHolder$extraCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:[Landroid/database/CursorWindow;

.field private asBinder:Z

.field private asInterface:[I

.field private extraCallback:Landroid/os/Bundle;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:[Ljava/lang/String;

.field private final onPostMessage:I

.field private final onRelationshipValidationResult:Landroid/os/Bundle;

.field private onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 220
    new-instance v0, Lo/getSecondaryButtonText;

    invoke-direct {v0}, Lo/getSecondaryButtonText;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 221
    new-instance v0, Lo/trackEventJson;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/trackEventJson;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->onTransact:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->asBinder:Z

    .line 4
    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->onPostMessage:I

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->onNavigationEvent:[Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->ICustomTabsCallback:[Landroid/database/CursorWindow;

    .line 7
    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->onMessageChannelReady:I

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->onRelationshipValidationResult:Landroid/os/Bundle;

    return-void
.end method

.method private onMessageChannelReady()Z
    .locals 1

    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->onTransact:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 199
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->extraCallback:Landroid/os/Bundle;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->onNavigationEvent:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 30
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->extraCallback:Landroid/os/Bundle;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->ICustomTabsCallback:[Landroid/database/CursorWindow;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->asInterface:[I

    const/4 v1, 0x0

    .line 34
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->ICustomTabsCallback:[Landroid/database/CursorWindow;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 35
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->asInterface:[I

    aput v1, v3, v0

    .line 36
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    sub-int v2, v1, v2

    .line 38
    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->ICustomTabsCallback:[Landroid/database/CursorWindow;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 2

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->onTransact:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->onTransact:Z

    const/4 v0, 0x0

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->ICustomTabsCallback:[Landroid/database/CursorWindow;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->ICustomTabsCallback:[Landroid/database/CursorWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->asBinder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->ICustomTabsCallback:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/data/DataHolder;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v0, "DataBuffer"

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0xb2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 214
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const v0, -0xb0bb

    .line 2008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->onNavigationEvent:[Ljava/lang/String;

    const/4 v3, 0x1

    .line 47
    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 49
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->ICustomTabsCallback:[Landroid/database/CursorWindow;

    const/4 v4, 0x2

    .line 51
    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 2063
    iget v2, p0, Lcom/google/android/gms/common/data/DataHolder;->onMessageChannelReady:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    .line 3039
    invoke-static {p1, v5, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3064
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->onRelationshipValidationResult:Landroid/os/Bundle;

    .line 57
    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 58
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->onPostMessage:I

    const/16 v2, 0x3e8

    .line 4039
    invoke-static {p1, v2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4040
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v2, v0, v1

    sub-int/2addr v1, v4

    .line 6013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6014
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6015
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method
