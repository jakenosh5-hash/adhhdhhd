.class public interface abstract Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;
.super Ljava/lang/Object;
.source "DeepSeekNativeBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onChunk(Ljava/lang/String;)V
.end method

.method public abstract onCompleted()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onStarted(Ljava/lang/String;)V
.end method
