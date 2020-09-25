.class public final Lo/getInfoKey$onRelationshipValidationResult;
.super Lo/getInfoKey$extraCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$onRelationshipValidationResult$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getInfoKey$extraCommand<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/getInfoKey$onRelationshipValidationResult$onNavigationEvent;

.field private static final onPostMessage:Lo/addIndentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/addIndentation<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 912
    new-instance v0, Lo/getInfoKey$onRelationshipValidationResult$3;

    invoke-direct {v0}, Lo/getInfoKey$onRelationshipValidationResult$3;-><init>()V

    sput-object v0, Lo/getInfoKey$onRelationshipValidationResult;->onPostMessage:Lo/addIndentation;

    .line 934
    new-instance v0, Lo/getInfoKey$onRelationshipValidationResult$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getInfoKey$onRelationshipValidationResult$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/getInfoKey$onRelationshipValidationResult;->CREATOR:Lo/getInfoKey$onRelationshipValidationResult$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 926
    sget-object v0, Lo/getInfoKey$onRelationshipValidationResult;->onPostMessage:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Landroid/os/Parcel;Lo/asString;B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Byte;)V
    .locals 2

    .line 930
    sget-object v0, Lo/getInfoKey$onRelationshipValidationResult;->onPostMessage:Lo/addIndentation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/getInfoKey$extraCommand;-><init>(Ljava/lang/Object;Lo/asString;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic describeContents()I
    .locals 1

    .line 910
    invoke-super {p0}, Lo/getInfoKey$extraCommand;->describeContents()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 910
    invoke-super {p0, p1, p2}, Lo/getInfoKey$extraCommand;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
