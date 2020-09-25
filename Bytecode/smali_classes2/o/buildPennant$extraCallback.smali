.class abstract Lo/buildPennant$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildPennant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "extraCallback"
.end annotation


# instance fields
.field onNavigationEvent:I

.field onPostMessage:Ljava/io/IOException;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lo/buildPennant$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method abstract extraCallback(Lo/onServerInfoUpdate;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
