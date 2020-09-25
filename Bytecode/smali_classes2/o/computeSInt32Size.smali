.class public abstract Lo/computeSInt32Size;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ICustomTabsCallback:Lo/computeSInt32Size;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent(Lo/checkNoSpaceLeft;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
