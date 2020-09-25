.class public final Lo/ag$2$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ag$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/setReferrer;",
            "Lo/ag$2$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Lo/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ag$2$onNavigationEvent;->extraCallback:Ljava/util/Map;

    return-void
.end method
