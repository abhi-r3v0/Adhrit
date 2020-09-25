.class final Lo/FirebaseAuthInvalidUserException$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseAuthInvalidUserException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lo/FirebaseAuthInvalidUserException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    .line 2103
    new-instance v0, Lo/FirebaseAuthInvalidUserException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lo/FirebaseAuthInvalidUserException;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2

    .line 1097
    new-instance v0, Lo/FirebaseAuthInvalidUserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lo/FirebaseAuthInvalidUserException;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1109
    new-array p1, p1, [Lo/FirebaseAuthInvalidUserException;

    return-object p1
.end method
