<?php

class StrategyContext
{
    private $strategy;

    public function setStrategy(StrategyInterface $strategy)
    {
        $this->strategy = $strategy;
    }

    public function executeStrategy()
    {
        return $this->strategy->execute();
    }
}

interface StrategyInterface
{
    public function execute();
}

class FooStrategy implements StrategyInterface
{
    public function execute()
    {
        return 'foo';
    }
}

class BarStrategy implements StrategyInterface
{
    public function execute()
    {
        return 'bar';
    }
}

$strategyContext = new StrategyContext();

$strategyContext->setStrategy(new FooStrategy());
echo $strategyContext->executeStrategy() . "\n";

$strategyContext->setStrategy(new BarStrategy());
echo $strategyContext->executeStrategy() . "\n";
