.class final Lo/FirebaseAuthWebException$onNavigationEvent$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseAuthWebException$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lo/FirebaseAuthWebException$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 4044
    new-instance v0, Lo/FirebaseAuthWebException$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/FirebaseAuthWebException$onNavigationEvent;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .line 3038
    new-instance v0, Lo/FirebaseAuthWebException$onNavigationEvent;

    invoke-direct {v0, p1, p2}, Lo/FirebaseAuthWebException$onNavigationEvent;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3050
    new-array p1, p1, [Lo/FirebaseAuthWebException$onNavigationEvent;

    return-object p1
.end method
