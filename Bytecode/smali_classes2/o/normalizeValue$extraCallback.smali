.class public abstract Lo/normalizeValue$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/normalizeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# static fields
.field public static final warmup:Lo/normalizeValue$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 926
    new-instance v0, Lo/normalizeValue$extraCallback$3;

    invoke-direct {v0}, Lo/normalizeValue$extraCallback$3;-><init>()V

    sput-object v0, Lo/normalizeValue$extraCallback;->warmup:Lo/normalizeValue$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/normalizeValue;)V
    .locals 0

    return-void
.end method

.method public abstract onMessageChannelReady(Lo/getServerCache;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
