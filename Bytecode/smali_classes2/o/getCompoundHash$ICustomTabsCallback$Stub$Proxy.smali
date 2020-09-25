.class final Lo/getCompoundHash$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Proxy"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getCompoundHash;


# direct methods
.method private constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCompoundHash;B)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lo/getCompoundHash$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/getCompoundHash;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 326
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onTransact(Lo/getCompoundHash;)V

    return-void
.end method
