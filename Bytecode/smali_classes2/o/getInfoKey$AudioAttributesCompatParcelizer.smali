.class public final Lo/getInfoKey$AudioAttributesCompatParcelizer;
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
    name = "AudioAttributesCompatParcelizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$AudioAttributesCompatParcelizer$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lo/getMinName<",
        "Landroid/os/Parcelable;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$AudioAttributesCompatParcelizer$onPostMessage;


# instance fields
.field private extraCallback:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1271
    new-instance v0, Lo/getInfoKey$AudioAttributesCompatParcelizer$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$AudioAttributesCompatParcelizer$onPostMessage;-><init>(B)V

    sput-object v0, Lo/getInfoKey$AudioAttributesCompatParcelizer;->CREATOR:Lo/getInfoKey$AudioAttributesCompatParcelizer$onPostMessage;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    const-class v0, Lo/getInfoKey$AudioAttributesCompatParcelizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lo/getInfoKey$AudioAttributesCompatParcelizer;->extraCallback:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 1244
    invoke-direct {p0, p1}, Lo/getInfoKey$AudioAttributesCompatParcelizer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    iput-object p1, p0, Lo/getInfoKey$AudioAttributesCompatParcelizer;->extraCallback:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;B)V
    .locals 0

    .line 1244
    invoke-direct {p0, p1}, Lo/getInfoKey$AudioAttributesCompatParcelizer;-><init>(Landroid/os/Parcelable;)V

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

    .line 2268
    iget-object v0, p0, Lo/getInfoKey$AudioAttributesCompatParcelizer;->extraCallback:Landroid/os/Parcelable;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1258
    iget-object v0, p0, Lo/getInfoKey$AudioAttributesCompatParcelizer;->extraCallback:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
