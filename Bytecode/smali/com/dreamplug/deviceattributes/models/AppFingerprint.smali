.class public Lcom/dreamplug/deviceattributes/models/AppFingerprint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field fcmToken:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "fcm_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/AppFingerprint;->fcmToken:Ljava/lang/String;

    return-void
.end method
