.class public final Lo/newBuilder$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstallReferrerCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/newBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstallReferrerCommons<",
        "Lo/convertToJsonObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lo/convertToJsonObject;

    .line 1039
    invoke-virtual {p1}, Lo/convertToJsonObject;->ICustomTabsCallback()I

    move-result p1

    return p1
.end method
