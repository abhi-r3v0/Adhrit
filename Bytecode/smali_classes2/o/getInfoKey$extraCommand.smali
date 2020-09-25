.class Lo/getInfoKey$extraCommand;
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
    accessFlags = 0x8
    name = "extraCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lo/getMinName<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/asString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/asString<",
            "TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Parcel;Lo/asString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Lo/asString<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 1220
    invoke-interface {p2, p1}, Lo/asString;->onPostMessage(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lo/asString;B)V
    .locals 0

    .line 1213
    invoke-direct {p0, p1, p2}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lo/asString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/asString<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    iput-object p2, p0, Lo/getInfoKey$extraCommand;->onNavigationEvent:Lo/asString;

    .line 1225
    iput-object p1, p0, Lo/getInfoKey$extraCommand;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lo/asString;B)V
    .locals 0

    .line 1213
    invoke-direct {p0, p1, p2}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Lo/getInfoKey$extraCommand;->ICustomTabsCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1230
    iget-object p2, p0, Lo/getInfoKey$extraCommand;->onNavigationEvent:Lo/asString;

    iget-object v0, p0, Lo/getInfoKey$extraCommand;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Lo/asString;->ICustomTabsCallback(Ljava/lang/Object;Landroid/os/Parcel;)V

    return-void
.end method
