.class public Lo/setDefaultStereoMode;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setEndIconTintMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDefaultStereoMode$onPostMessage;,
        Lo/setDefaultStereoMode$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lo/setDefaultStereoMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setDefaultStereoMode;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Lo/getPaymentMode;[BLjava/lang/String;)Lo/getPaymentDueDateWeaklyTyped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPaymentMode;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "Lo/setEndIconTintMode$onPostMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/setTrackNameProvider;

    invoke-direct {v0, p0, p1, p2}, Lo/setTrackNameProvider;-><init>(Lo/getPaymentMode;[BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/getPaymentMode;->ICustomTabsCallback(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;

    move-result-object p0

    return-object p0
.end method
