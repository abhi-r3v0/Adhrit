.class public final Lo/getInfoKey$connect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Lo/getMinName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "connect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$connect$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lo/getMinName<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$connect$onNavigationEvent;


# instance fields
.field private extraCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1173
    new-instance v0, Lo/getInfoKey$connect$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$connect$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/getInfoKey$connect;->CREATOR:Lo/getInfoKey$connect$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getInfoKey$connect;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 1168
    invoke-direct {p0, p1}, Lo/getInfoKey$connect;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    iput-object p1, p0, Lo/getInfoKey$connect;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 1168
    invoke-direct {p0, p1}, Lo/getInfoKey$connect;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 2196
    iget-object v0, p0, Lo/getInfoKey$connect;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1186
    iget-object p2, p0, Lo/getInfoKey$connect;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
