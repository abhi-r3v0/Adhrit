.class final Lo/buildInstanceIdentifierChanged$ICustomTabsCallback$Stub;
.super Lo/buildInstanceIdentifierChanged$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildInstanceIdentifierChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0, p1}, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 312
    iput-object p2, p0, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method
