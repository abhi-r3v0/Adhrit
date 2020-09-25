.class public final Lo/FirebaseAuthInvalidUserException;
.super Lo/pause;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/FirebaseAuthInvalidUserException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final onPostMessage:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lo/FirebaseAuthInvalidUserException$3;

    invoke-direct {v0}, Lo/FirebaseAuthInvalidUserException$3;-><init>()V

    sput-object v0, Lo/FirebaseAuthInvalidUserException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 5

    .line 46
    invoke-direct {p0, p1, p2}, Lo/pause;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 50
    new-array v0, p2, [Ljava/lang/String;

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 53
    new-array v1, p2, [Landroid/os/Bundle;

    .line 54
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 56
    new-instance p1, Lo/fromMediaItemList;

    invoke-direct {p1, p2}, Lo/fromMediaItemList;-><init>(I)V

    iput-object p1, p0, Lo/FirebaseAuthInvalidUserException;->onPostMessage:Lo/fromMediaItemList;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 58
    iget-object v2, p0, Lo/FirebaseAuthInvalidUserException;->onPostMessage:Lo/fromMediaItemList;

    aget-object v3, v0, p1

    aget-object v4, v1, p1

    invoke-virtual {v2, v3, v4}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lo/FirebaseAuthInvalidUserException;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/pause;-><init>(Landroid/os/Parcelable;)V

    .line 42
    new-instance p1, Lo/fromMediaItemList;

    invoke-direct {p1}, Lo/fromMediaItemList;-><init>()V

    iput-object p1, p0, Lo/FirebaseAuthInvalidUserException;->onPostMessage:Lo/fromMediaItemList;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtendableSavedState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FirebaseAuthInvalidUserException;->onPostMessage:Lo/fromMediaItemList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 64
    invoke-super {p0, p1, p2}, Lo/pause;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-object p2, p0, Lo/FirebaseAuthInvalidUserException;->onPostMessage:Lo/fromMediaItemList;

    invoke-virtual {p2}, Lo/fromMediaItemList;->size()I

    move-result p2

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    new-array v0, p2, [Ljava/lang/String;

    .line 70
    new-array v1, p2, [Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    .line 73
    iget-object v4, p0, Lo/FirebaseAuthInvalidUserException;->onPostMessage:Lo/fromMediaItemList;

    .line 1390
    iget-object v4, v4, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    .line 73
    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 74
    iget-object v4, p0, Lo/FirebaseAuthInvalidUserException;->onPostMessage:Lo/fromMediaItemList;

    .line 1399
    iget-object v4, v4, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    .line 74
    check-cast v4, Landroid/os/Bundle;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
