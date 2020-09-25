.class public abstract Lo/MarketingMessageStatus$ICustomTabsCallback;
.super Lo/MarketingMessageStatus;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MarketingMessageStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/MarketingMessageStatus$ICustomTabsCallback<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lo/MarketingMessageStatus<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zzc:Lo/setDisplayCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDisplayCode<",
            "Lo/MarketingMessageStatus$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/MarketingMessageStatus;-><init>()V

    .line 2
    invoke-static {}, Lo/setDisplayCode;->onNavigationEvent()Lo/setDisplayCode;

    move-result-object v0

    iput-object v0, p0, Lo/MarketingMessageStatus$ICustomTabsCallback;->zzc:Lo/setDisplayCode;

    return-void
.end method
