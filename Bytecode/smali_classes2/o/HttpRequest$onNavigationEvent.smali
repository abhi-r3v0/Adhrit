.class final Lo/HttpRequest$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final firelogAnalyticsEvent:Lo/HttpRequest;


# direct methods
.method constructor <init>(Lo/HttpRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lo/HttpRequest;

    iput-object p1, p0, Lo/HttpRequest$onNavigationEvent;->firelogAnalyticsEvent:Lo/HttpRequest;

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final getFirelogAnalyticsEvent()Lo/HttpRequest;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/HttpRequest$onNavigationEvent;->firelogAnalyticsEvent:Lo/HttpRequest;

    return-object v0
.end method
